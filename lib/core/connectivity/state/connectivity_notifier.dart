import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:drecipe/core/connectivity/state/connectivity_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConnectivityNotifier extends StateNotifier<ConnectivityState> {
  final Connectivity _connectivity;

  ConnectivityNotifier(this._connectivity)
      : super(ConnectivityState.initial()) {
    checkConnectivity();
    _connectivity.onConnectivityChanged.listen((connectivityResult) {
      connectionChanged(connectivityResult);
    });
  }

  void connectionChanged(ConnectivityResult result) {
    if (state.connectivityResult != result) {
      state = state.copyWith(connectivityResult: result);
    }
  }

  Future<void> checkConnectivity() async {
    final connectionResult = await _connectivity.checkConnectivity();
    state = state.copyWith(connectivityResult: connectionResult);
  }
}
