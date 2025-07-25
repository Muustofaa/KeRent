import 'package:flutter/material.dart';
import 'package:kerent/presentation/widgets/login_form.dart';
import 'package:kerent/presentation/widgets/logo_section.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                child: const LoginForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
