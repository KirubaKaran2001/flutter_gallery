import 'package:flutter/material.dart';
import 'package:flutter_gallery/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings settings) {
        debugPrint('build route for ${settings.name}');
        var routes = <String, WidgetBuilder>{
          '/home': (BuildContext context) => const HomePage(),
        };
        WidgetBuilder builder = routes[settings.name]!;
        return MaterialPageRoute(
          builder: (ctx) => builder(ctx),
        );
      },
    );
  }
}
