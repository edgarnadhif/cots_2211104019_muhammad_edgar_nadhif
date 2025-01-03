import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cots_2211104019_muhammad_edgar_nadhif/utils/design_system/color.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          children: [
            const SizedBox(width: 10), // Geser logo sedikit ke kiri
            Image.asset(
              'assets/img/gojeklogo.png', // Ganti dengan path logo Gojek Anda
              height: 30,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: Colors.black),
            onPressed: () {
              // Tambahkan aksi untuk ikon bantuan di sini
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Enter your registered phone number to log in",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            const Text(
              "Phone Number *",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                prefixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    SizedBox(width: 10),
                    Text(
                      "+62",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    VerticalDivider(thickness: 1, color: Colors.grey),
                  ],
                ),
                hintText: "00000",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Tambahkan aksi jika nomor bermasalah
              },
              child: const Text(
                "Issue with number?",
                style: TextStyle(color: Colors.green),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi untuk tombol lanjutkan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.standardGreen,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Text(
                "Continue",
                style: TextStyle(fontSize: 18, color: AppColors.white),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
