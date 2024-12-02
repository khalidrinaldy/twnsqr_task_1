import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:twnsqr_task_1/core/di/instance.dart';
import 'package:twnsqr_task_1/core/utils/theme/theme.dart';
import 'package:twnsqr_task_1/routes.dart';

void main() async {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    ScreenBreakpoints(desktop: 1280, tablet: 780, watch: 200,),
  );
  registerInstances();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Town Square',
      theme: AppTheme.mainTheme,
      themeMode: ThemeMode.system,
      routerConfig: Routes.routes,
      builder: (context, child) => child!,
    );
  }
}
