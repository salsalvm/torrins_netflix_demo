
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:torrins_test/res/theme/theme.dart';
import 'package:torrins_test/utils/routes/route.dart';
import 'package:torrins_test/utils/routes/routes_name.dart';

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'NetFlix',
      theme: KTheme().theme,
      initialRoute: KRoutesName.splash,
      onGenerateRoute: KRoute.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
