import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_state.freezed.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState({
    required ConnectivityResult connectivityResult,
  }) = _ConnectivityState;

  factory ConnectivityState.initial() => const ConnectivityState(
        connectivityResult: ConnectivityResult.mobile,
      );
}
