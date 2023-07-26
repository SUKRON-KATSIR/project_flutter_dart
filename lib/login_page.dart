import 'package:edspert_flutter_16/widgets/auth_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/login-image.png'),
            const Column(
              children: [
                Text(
                  'Selamat Datang',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Selamat Datang di Aplikasi Widya Edu\n'
                  'Aplikasi Latihan dan Konsultasi Soal',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const Column(
              children: [
                AuthButton(
                  iconPath: 'assets/google-logo.png',
                  text: 'Masuk dengan Google',
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                ),
                SizedBox(height: 16),
                AuthButton(
                  iconPath: 'assets/apple-logo.png',
                  text: 'Masuk dengan Apple',
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
