import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/common/ui/themes/main_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = Provider<AppTheme>((ref) => AppTheme());

final routerProvider = Provider<AppRouter>((ref) => AppRouter());
