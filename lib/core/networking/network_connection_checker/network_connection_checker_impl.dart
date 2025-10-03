import 'dart:async';
import 'package:chatbox_app/core/networking/network_connection_checker/network_connection_checker.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

/// Implementation of [NetworkConnectionChecker].
///
/// Uses the `connectivity_plus` package under the hood to check
/// current connectivity status and listen to changes.
class NetworkConnectionCheckerImpl implements NetworkConnectionChecker {
  final Connectivity _connectivity;

  /// Creates a [NetworkConnectionCheckerImpl] with the given [Connectivity] instance.
  NetworkConnectionCheckerImpl({required Connectivity connectivity})
      : _connectivity = connectivity;

  @override

  /// Checks the current connectivity status.
  ///
  /// Returns `true` if connected via WiFi or mobile data, otherwise `false`.
  Future<bool> isConnected() async {
    final List<ConnectivityResult> status =
        await _connectivity.checkConnectivity();
    return isConnectedWithMobileDataOrWifi(status);
  }

  /// Holds the subscription to connectivity changes.
  ///
  /// Made nullable to prevent LateInitializationError and allow
  /// safe cancellation even if subscription was never created.
  StreamSubscription<List<ConnectivityResult>>? _connectivityStream;

  @override

  /// Subscribes to connectivity status changes.
  ///
  /// Automatically cancels any existing subscription before creating a new one
  /// to prevent memory leaks from multiple subscriptions.
  ///
  /// The [onConnectivityChange] callback is triggered whenever the status changes.
  /// Example:
  /// ```dart
  /// checker.subscribeToConnectivityStreamChanges((isConnected) {
  ///   if (isConnected) {
  ///     print("Connected");
  ///   } else {
  ///     print("Disconnected");
  ///   }
  /// });
  /// ```
  void subscribeToConnectivityStreamChanges(
      void Function(bool isConnected) onConnectivityChange) async {
    // Cancel previous subscription to prevent memory leaks
    _connectivityStream?.cancel();

    _connectivityStream = _connectivity.onConnectivityChanged.listen(
      (status) {
        bool isConnected = isConnectedWithMobileDataOrWifi(status);
        onConnectivityChange(isConnected);
      },
    );
  }

  /// Helper method to determine if the device is connected
  /// via WiFi or mobile data from the given [status].
  ///
  /// Filters out other connection types like Bluetooth, VPN, or Ethernet
  /// to focus only on internet-capable connections.
  bool isConnectedWithMobileDataOrWifi(List<ConnectivityResult> status) {
    return status.contains(ConnectivityResult.mobile) ||
        status.contains(ConnectivityResult.wifi);
  }

  @override

  /// Cancels the connectivity stream subscription to free resources.
  ///
  /// Sets the subscription to null after cancellation for proper cleanup
  /// and to prevent accidental reuse of cancelled subscription.
  void disposeConnectivityStream() {
    _connectivityStream?.cancel();
    // Set to null to indicate no active subscription
    _connectivityStream = null;
  }
}
