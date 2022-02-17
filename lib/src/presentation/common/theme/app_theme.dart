import 'package:flutter/material.dart';
import 'package:flutter_challenge_three/src/presentation/common/theme/app_color.dart';

abstract class AppTheme {
  static ThemeData get theme => light;

  static ThemeData get light => ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundGray,
      );
}
