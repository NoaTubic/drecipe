import 'package:drecipe/features/common/ui/widgets/bottom_nav_bar/state/bottom_nav_bar_notifier.dart';
import 'package:drecipe/features/common/ui/widgets/bottom_nav_bar/state/bottom_nav_bar_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavBarProvider =
    StateNotifierProvider<BottomNavNotifier, BottomNavBarState>(
  (ref) => BottomNavNotifier(),
);
