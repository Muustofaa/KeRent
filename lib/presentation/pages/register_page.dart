import 'package:flutter/material.dart';
import '../widgets/register_form.dart';
import '../widgets/logo_section.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 48),
            const LogoSection(),
            const SizedBox(height: 40),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: const RegisterForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
