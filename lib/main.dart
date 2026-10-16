import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const DigitalBusinessCardApp());
}

class DigitalBusinessCardApp extends StatelessWidget {
  const DigitalBusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Kartu Nama Digital',
      home: BusinessCardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[800], // Background Merah
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 70.0,
                  backgroundImage: NetworkImage(
                      'https://placehold.co/300x300/EFEFEF/black?text=Foto'),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Apoy', // Nama diganti jadi Apoy
                  style: GoogleFonts.pacifico(
                    fontSize: 40.0,
                    color: Colors.black, // Font Hitam
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'MAHASISWA & PROGRAMMER',
                  style: GoogleFonts.sourceSans3(
                    fontSize: 20.0,
                    color: Colors.black, // Font Hitam
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200.0,
                  child: Divider(
                    color: Colors.black, // Garis Pembatas Hitam
                  ),
                ),
                // 1. Telepon
                Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.phone,
                      color: Colors.black, // Ikon Hitam
                    ),
                    title: const Text(
                      '+62 812 3456 7890',
                      style: TextStyle(
                        color: Colors.black, // Font Hitam
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                // 2. Email
                Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.email,
                      color: Colors.black, // Ikon Hitam
                    ),
                    title: const Text(
                      'apoy@gmail.com', // Email baru
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black, // Font Hitam
                      ),
                    ),
                  ),
                ),
                // 3. Instagram
                Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.camera_alt,
                      color: Colors.black, // Ikon Hitam
                    ),
                    title: const Text(
                      '@raffi123', // Instagram baru
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black, // Font Hitam
                      ),
                    ),
                  ),
                ),
                // 4. GitHub
                Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.code,
                      color: Colors.black, // Ikon Hitam
                    ),
                    title: const Text(
                      'github.com/Abdurrahimraffi', // GitHub baru
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black, // Font Hitam
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}