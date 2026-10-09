import 'package:material_ui/material_ui.dart';

class MenuButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const MenuButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        width: 240,
        height: 52,
        child: ElevatedButton.icon(
          onPressed: onPressed,
          label: Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black87,
              fontWeight: FontWeight(5),
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            backgroundColor: Color.fromRGBO(250, 250, 250, 0.808),
          ),
        ),
      ),
    );
  }
}
