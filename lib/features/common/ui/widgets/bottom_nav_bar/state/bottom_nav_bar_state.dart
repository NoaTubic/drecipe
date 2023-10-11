import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

part 'bottom_nav_bar_state.freezed.dart';

@freezed
class BottomNavBarState with _$BottomNavBarState {
  const factory BottomNavBarState({
    required PersistentTabController controller,
    required int previousIndex,
    required int currentIndex,
  }) = _BottomNavBarState;

  factory BottomNavBarState.initial() => BottomNavBarState(
        controller: PersistentTabController(),
        previousIndex: 0,
        currentIndex: 0,
      );
}
