import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Commonfile/router.dart';
import 'Homepage/homepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),  // This will load Welcome screen as the home screen
      getPages: routes,
      initialRoute: 'homepage',
    );
  }
}
