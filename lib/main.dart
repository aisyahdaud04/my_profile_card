import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Profile',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, 
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile Card"),
        backgroundColor: const Color(0xFFD1C4E9), 
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Card(
          color: const Color(0xFFF8BBD0), 
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // PROFILE IMAGE
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/aisyah.jpeg"),
                ),

                const SizedBox(height: 10),

                // NAME
                const Text(
                  "NUR AISYAH BINTI MAT DAUD",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6A1B9A), 
                  ),
                ),

                const SizedBox(height: 5),

                // DOB / STATE
                const Text(
                  "Selangor | 16.3.2004",
                  style: TextStyle(color: Colors.black),
                ),

                const SizedBox(height: 15),

                // CONTACT SECTION
                Column(
                  children: const [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email, color: Color(0xFF6A1B9A)),
                        SizedBox(width: 8),
                        Text("aisyahdaud04@gmail.com"),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone, color: Color(0xFF6A1B9A)),
                        SizedBox(width: 8),
                        Text("013-3178395"),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.work, color: Color(0xFF6A1B9A)),
                        SizedBox(width: 8),
                        Text("linkedin.com/in/aisyah"),
                      ],
                    ),

                  ],
                ),

                const SizedBox(height: 15),

                // BIO
                const Text(
                  "I am a student of Software Engineering who is passionate about creating clean and user-friendly applications. I enjoy learning new technologies and continuously improving my skills in app development.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
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