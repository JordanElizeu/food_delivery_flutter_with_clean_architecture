import 'package:flutter/material.dart';

import '../../shared/constants/constants.dart';
import 'app.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food delivery',
      routes: AppRoutes.routes,
      initialRoute: Routes.onBoarding,
    );
  }
}
