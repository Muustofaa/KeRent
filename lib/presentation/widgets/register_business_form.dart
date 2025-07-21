import 'package:flutter/material.dart';
import 'package:kerent/presentation/pages/login_page.dart';
import 'custom_text_field.dart';

class RegisterBusinessForm extends StatelessWidget {
  const RegisterBusinessForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Register',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),

            Center(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFCCFF99),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.image, size: 36, color: Colors.green),
              ),
            ),

            const SizedBox(height: 24),
            const CustomTextField(
              label: 'Nama Usaha',
              hintText: 'Rental Kamera',
              obscureText: false,
            ),
            const SizedBox(height: 16),
            const CustomTextField(
              label: 'Alamat',
              hintText: 'Surakarta, Indonesia',
              obscureText: false,
            ),
            const SizedBox(height: 16),

            const Text(
              'Metode Pembayaran',
              style: TextStyle(color: Colors.black54, fontSize: 13),
            ),
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey.shade400)),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: 'Transfer/QRIS/Tunai',
                  items: const [
                    DropdownMenuItem(
                      value: 'Transfer/QRIS/Tunai',
                      child: Text('Transfer/QRIS/Tunai'),
                    ),
                    DropdownMenuItem(
                      value: 'Tunai Saja',
                      child: Text('Tunai Saja'),
                    ),
                  ],
                  onChanged: (value) {},
                ),
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'Jadwal Buka',
              style: TextStyle(color: Colors.black54, fontSize: 13),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(child: Text('10.00')),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text('-'),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(child: Text('16.00')),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                  backgroundColor: Color.fromARGB(255, 0, 155, 67),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Sudah punya akun? ',
                  style: const TextStyle(color: Colors.black54),
                  children: [
                    TextSpan(
                      text: 'Login Sekarang',
                      style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
