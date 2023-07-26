import 'package:flutter/material.dart';

import '../resume.dart';

class AuthButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  const AuthButton({
    super.key,
    required this.iconPath,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Resume()),
        );
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shadowColor: Colors.black,
          elevation: 5,
          side: BorderSide(
              color: backgroundColor == Colors.black
                  ? Colors.transparent
                  : Colors.blue)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(iconPath, height: 30),
            const SizedBox(width: 8),
            Text(text, style: TextStyle(color: textColor)),
          ],
        ),
      ),
    );
  }
}
