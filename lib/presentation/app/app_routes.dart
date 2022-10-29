import 'package:flutter/material.dart';

import '../../shared/constants/constants.dart';
import '../pages/pages.dart';

abstract class AppRoutes {
  static final Map<String, Widget Function(BuildContext context)> routes = {
    Routes.onBoarding: (context) => const OnBoardingPage(),
  };
}
