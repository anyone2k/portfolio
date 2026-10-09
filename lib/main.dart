import 'package:material_ui/material_ui.dart';

import './screens/start_menu/start_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 53, 19, 112),
        ),
        fontFamily: 'BrokenConsole',
      ),
      home: const StartMenu(),
    );
  }
}
