import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/constants/constants.dart';
import '../../shared/design_system/theme/theme.dart';
import '../onboarding/cubits/cubits.dart';
import 'app.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => PageControllerCubit(),
      child: MaterialApp(
        title: 'Food delivery',
        routes: AppRoutes.routes,
        initialRoute: Routes.onBoarding,
        theme: DefaultTheme.defaultTheme,
      ),
    );
  }
}
