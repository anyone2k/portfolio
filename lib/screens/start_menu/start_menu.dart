import 'package:material_ui/material_ui.dart';
import 'package:portfolio/widgets/menu_button/menu_button.dart';
import 'package:flutter/services.dart';

class StartMenu extends StatefulWidget {
  const StartMenu({super.key});
  @override
  State<StartMenu> createState() => _StartMenuState();
}

class _StartMenuState extends State<StartMenu> with TickerProviderStateMixin {
  late final AnimationController _enter;
  late final AnimationController _exit;
  late final Animation<double> _titleFade;
  late final List<Animation<double>> _buttonDrop;
  bool _leaving = false;

  @override
  void initState() {
    super.initState();
    _enter = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1600),
    )..forward();

    _exit = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );

    // Title: fade out only.
    _titleFade = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: _exit,
        curve: const Interval(0.0, 0.7, curve: Curves.easeIn),
      ),
    );

    // Buttons: Contact leaves first, Portfolio last.
    _buttonDrop = List.generate(3, (i) {
      final delay = (2 - i) * 0.1;
      return CurvedAnimation(
        parent: _exit,
        curve: Interval(delay, delay + 0.6, curve: Curves.easeInCubic),
      );
    });
  }

  @override
  void dispose() {
    _enter.dispose();
    _exit.dispose();
    super.dispose();
  }

  /// Plays the exit animation, runs [action], then restores the menu
  /// (useful when [action] pushes a page that can be popped).
  Future<void> _leaveThen(Future<void> Function() action) async {
    if (_leaving) return;
    _leaving = true;
    await _exit.forward();
    await action();
    if (!mounted) return;
    _exit.reset();
    _enter.forward(from: 0);
    _leaving = false;
  }

  Widget _enterStagger({required int index, required Widget child}) {
    final start = index * 0.15;
    final animation = CurvedAnimation(
      parent: _enter,
      curve: Interval(start, start + 0.3, curve: Curves.easeOutCubic),
    );
    return FadeTransition(
      opacity: animation,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 0.3),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      ),
    );
  }

  /// Slides [child] down past the bottom edge of the screen.
  Widget _dropOut({required int buttonIndex, required Widget child}) {
    final height = MediaQuery.sizeOf(context).height;
    final animation = _buttonDrop[buttonIndex];
    return AnimatedBuilder(
      animation: animation,
      child: child,
      builder: (context, child) => Transform.translate(
        offset: Offset(0, animation.value * height),
        child: child,
      ),
    );
  }

  Widget _button(int i, String label, Future<void> Function() action) {
    return _enterStagger(
      index: i + 1,
      child: _dropOut(
        buttonIndex: i,
        child: MenuButton(label: label, onPressed: () => _leaveThen(action)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(128, 0, 0, 1),
            Color.fromRGBO(216, 206, 6, 1),
          ],
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _enterStagger(
              index: 0,
              child: FadeTransition(
                opacity: _titleFade,
                child: const Text(
                  'WELCOME',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'BrokenConsole',
                    fontSize: 80,
                    color: Colors.white,
                    letterSpacing: 4,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
            _button(0, 'Portfolio', () => SystemNavigator.pop()),
            _button(1, 'Socials', () => SystemNavigator.pop()),
            _button(2, 'Contact', () => SystemNavigator.pop()),
          ],
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Color.fromRGBO(128, 0, 0, 40),
//             Color.fromRGBO(216, 206, 6, 80),
//           ],
//         ),
//       ),
//       child: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'WELCOME',
//               style: TextStyle(
//                 decoration: TextDecoration.none,
//                 fontFamily: 'BrokenConsole',
//                 fontSize: 80,
//                 color: Colors.white,
//                 letterSpacing: 4,
//               ),
//             ),
//             const SizedBox(height: 60),
//             MenuButton(
//               label: 'Portfolio',
//               onPressed: () => SystemNavigator.pop(),
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (_) => ),
//               // ),
//             ),
//             MenuButton(
//               label: 'Socials',
//               onPressed: () =>
//                   () => SystemNavigator.pop(),
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (_) => const ),
//               // ),
//             ),
//             MenuButton(
//               label: 'Contact',
//               onPressed: () => SystemNavigator.pop(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
