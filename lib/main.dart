import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:test_project/routes.dart';
import 'package:test_project/theme.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  @override
  void initState() {
    super.initState();

    // var brightness = SchedulerBinding.instance.window.platformBrightness;
    // storage.read(key: 'isDarkMode').then((value) {
    //   if (value != null) {
    //     isDarkMode = value == 'true';
    //   } else {
    //     isDarkMode = brightness == Brightness.dark;
    //   }
    //   Get.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
    // });
    Get.changeThemeMode(ThemeMode.light);
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Test Project',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      transitionDuration: const Duration(milliseconds: 400),
      theme: Styles.lightMode(context),
      darkTheme: Styles.darkMode(context),
      initialRoute: RouterHelper.home,
      getPages: RouterHelper.routes,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ru'), Locale('en')],
    );
  }
}
