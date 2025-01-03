import 'package:cots_2211104019_muhammad_edgar_nadhif/utils/design_system/color.dart';
import 'package:cots_2211104019_muhammad_edgar_nadhif/modules/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/img/onboarding-1.png",
      "title": "Selamat datang di Gojek!",
      "description":
          "Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhanmu, kapanpun, dan di manapun.",
    },
    {
      "image": "assets/img/onboarding-2.png",
      "title": "Transportasi & Logistik",
      "description":
          "Antar kamu jalan atau ambilin barang lebih gampang tinggal ngeklik doang~",
    },
    {
      "image": "assets/img/onboarding-3.png",
      "title": "Pesan Makan & Belanja",
      "description": "Lagi ngidam sesuatu? Gojek beliin gak pakai lama.",
    },
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/img/gojeklogo.png',
            width: 250,
            height: 250,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/img/bahasa.png', // Ganti dengan path logo kanan
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: onboardingData.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        onboardingData[index]['image']!,
                        height: 250,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        onboardingData[index]['title']!,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        onboardingData[index]['description']!,
                        style: const TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              onboardingData.length,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: currentIndex == index ? 12 : 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == index ? Colors.green : Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => LoginPage()); // Navigasi ke LoginPage
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.standardGreen,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    "Masuk",
                    style: TextStyle(fontSize: 18, color: AppColors.white),
                  ),
                ),

                const SizedBox(height: 10), // Spacer between buttons
                OutlinedButton(
                  onPressed: () {
                    // Logic for outlined button
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                        color: AppColors.standardGreen), // Border color
                    minimumSize:
                        const Size(double.infinity, 50), // Full-width button
                  ),
                  child: const Text(
                    "Belum ada akun?, Daftar dulu",
                    style:
                        TextStyle(fontSize: 16, color: AppColors.standardGreen),
                  ),
                ),
                const SizedBox(
                    height: 10), // Spacer between the outlined button and text
                TextButton(
                  onPressed: () {
                    // Logic for "Daftar Dulu"
                  },
                  child: const Text(
                    "Dengan masuk atau mendaftar, kamu menyetujui Ketentuan layanan dan Kebijakan privasi.",
                    style: TextStyle(fontSize: 16, color: AppColors.darkGrey),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
