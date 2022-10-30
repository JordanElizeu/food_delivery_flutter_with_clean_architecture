import 'package:flutter/material.dart';

import 'injection/injection.dart';
import 'presentation/app/app.dart';

void main() {
  injectionDependency();
  runApp(const AppWidget());
}
