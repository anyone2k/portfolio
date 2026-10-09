import 'package:material_ui/material_ui.dart';
import 'package:portfolio/widgets/menu_button/menu_button.dart';
import 'package:flutter/services.dart';

class StartMenu extends StatelessWidget {
  const StartMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(128, 0, 0, 40),
            Color.fromRGBO(216, 206, 6, 80),
          ],
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'WELCOME',
              style: TextStyle(
                fontFamily: 'BrokenConsole',
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 4,
              ),
            ),
            const SizedBox(height: 60),
            // MenuButton(
            //   label: 'Play',
            //   icon: Icons.play_arrow,
            //   onPressed: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (_) => ),
            //   ),
            // ),
            // MenuButton(
            //   label: 'Settings',
            //   icon: Icons.settings,
            //   onPressed: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (_) => const ),
            //   ),
            // ),
            MenuButton(
              label: 'Quit',
              icon: Icons.exit_to_app,
              onPressed: () => SystemNavigator.pop(),
            ),
          ],
        ),
      ),
    );
  }
}
