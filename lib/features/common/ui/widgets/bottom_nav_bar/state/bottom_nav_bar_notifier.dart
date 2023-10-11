import 'package:drecipe/features/common/ui/widgets/bottom_nav_bar/state/bottom_nav_bar_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavNotifier extends StateNotifier<BottomNavBarState> {
  BottomNavNotifier() : super(BottomNavBarState.initial());

  void onTabSelected(int index) {
    state = state.copyWith(
      previousIndex: state.currentIndex,
      currentIndex: index,
    );
  }
}
