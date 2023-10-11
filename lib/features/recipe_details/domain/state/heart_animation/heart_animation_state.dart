import 'package:freezed_annotation/freezed_annotation.dart';

part 'heart_animation_state.freezed.dart';

@freezed
class HeartAnimationState with _$HeartAnimationState {
  const factory HeartAnimationState({
    required bool isAnimating,
  }) = _HeartAnimationState;

  factory HeartAnimationState.initial() =>
      const HeartAnimationState(isAnimating: false);
}
