import 'dart:developer';

import 'package:chatbox_app/core/di/service_locator.dart';
import 'package:chatbox_app/core/networking/network_connection_checker/network_connection_checker.dart';
import 'package:chatbox_app/core/networking/network_connection_checker/network_connection_checker_impl.dart';
import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

/// A mixin to handle internet connectivity changes and show snack bars accordingly.
/// Can be reused in any StatefulWidget that needs network awareness.
mixin NetworkAwarnessMixin<T extends StatefulWidget> on State<T> {
  /// Default internet checker using service locator.
  /// Can be overridden in widgets for testability or custom implementations.
  NetworkConnectionChecker get internetChecker =>
      getIt<NetworkConnectionCheckerImpl>();

  /// Flag to track whether the "No Internet" alert is currently shown.
  bool _isInternetAlertOn = false;

  @override
  void initState() {
    super.initState();
    _subscribeToInternetChanges();
  }

  /// Subscribes to internet connectivity stream changes.
  void _subscribeToInternetChanges() {
    internetChecker
        .subscribeToConnectivityStreamChanges(_onConnectivityChanged);
  }

  /// Callback triggered whenever the internet connectivity changes.
  void _onConnectivityChanged(bool isConnected) {
    log('isConnected : $isConnected');
    if (!isConnected) {
      // Show "No Internet" snackbar if connection is lost
      _showNoInternetSnackBar();
      _isInternetAlertOn = true;
    } else if (_isInternetAlertOn) {
      // Hide previous snackbar and show "Back Online" when connection is restored
      _hideCurrentSnackBar();
      _showBackOnlineSnackBar();
      _isInternetAlertOn = false;
    }
  }

  /// Shows a persistent snackbar to indicate no internet connection.
  void _showNoInternetSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(
          'No Internet Connection',
          style: AppTextStyles.medium14(context).copyWith(color: Colors.white),
        ),
        showCloseIcon: true,
        // Keep it for a long time until internet returns
        duration: const Duration(days: 1),
      ),
    );
  }

  /// Shows a short snackbar when the device reconnects to the internet.
  void _showBackOnlineSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        content: Text(
          "Yay! You're back online.",
          style: AppTextStyles.medium14(context).copyWith(color: Colors.white),
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  /// Hides the currently visible snackbar (if any).
  void _hideCurrentSnackBar() {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

  @override
  void dispose() {
    // Dispose the connectivity stream subscription when widget is removed
    internetChecker.disposeConnectivityStream();
    super.dispose();
  }
}
