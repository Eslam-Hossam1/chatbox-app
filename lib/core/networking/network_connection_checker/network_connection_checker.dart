/// Abstract interface to check internet connectivity status.
///
/// Allows flexibility for testing & swapping implementations.
abstract interface class NetworkConnectionChecker {
  /// Checks if the device is currently connected to the internet.
  ///
  /// Returns `true` if connected to WiFi or mobile data, otherwise `false`.
  Future<bool> isConnected();

  /// Subscribes to connectivity changes (online/offline).
  ///
  /// The [onConnectivityChange] callback will be triggered with:
  /// - `true` when connected
  /// - `false` when disconnected
  void subscribeToConnectivityStreamChanges(
    void Function(bool isConnected) onConnectivityChange,
  );

  /// Cleans up resources by disposing of the connectivity stream.
  void disposeConnectivityStream();
}
