import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:resumeapp/screens/home_page.dart';
import 'package:resumeapp/theme/theme.dart';
import 'package:resumeapp/theme/theme_service.dart';

import 'common/controller_binding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 736),
        builder: (context, snapshot) {
          return GetMaterialApp(
            title: 'Flutter Demo',
            theme: Themes.light,
            darkTheme: Themes.dark,
            themeMode: ThemeServices().theme,
            initialBinding: ControllerBinding(),
            home: const HomePage(),
          );
        });
  }
}
