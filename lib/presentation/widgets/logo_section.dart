import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'KeRent',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 0, 155, 67),
          ),
        ),
      ],
    );
  }
}
