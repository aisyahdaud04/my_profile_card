import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

  // EMAIL
  Future<void> openEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'aisyahdaud04@gmail.com',
    );

    await launchUrl(emailUri);
  }

  // PHONE
  Future<void> openPhone() async {
    final Uri phoneUri = Uri(
      scheme: 'tel',
      path: '0133178395',
    );

    await launchUrl(phoneUri);
  }

  // LINKEDIN
  Future<void> openLinkedIn() async {
    final Uri linkedInUri = Uri.parse(
      'https://www.linkedin.com',
    );

    await launchUrl(linkedInUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        backgroundColor: const Color(0xFFD1C4E9), // soft purple
        foregroundColor: Colors.black,
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),

          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFFF8BBD0), // soft pink
                Color(0xFFE1BEE7), // soft purple
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),

            borderRadius: BorderRadius.circular(25),

            boxShadow: [
              BoxShadow(
                color: Colors.purple.withOpacity(0.2),
                blurRadius: 15,
                offset: const Offset(0, 8),
              ),
            ],
          ),

          child: Padding(
            padding: const EdgeInsets.all(25),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // GREETING
                const Text(
                  "Hello, Welcome 👋",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.purple,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 15),

                // PROFILE IMAGE WITH BORDER
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),

                  child: const CircleAvatar(
                    radius: 55,
                    backgroundImage:
                        AssetImage("assets/aisyah.jpeg"),
                  ),
                ),

                const SizedBox(height: 15),

                // NAME
                const Text(
                  "NUR AISYAH BINTI MAT DAUD",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6A1B9A),
                  ),
                ),

                const SizedBox(height: 5),

                // STATE & DOB
                const Text(
                  "Selangor | 16.3.2004",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 20),

                // EMAIL
                GestureDetector(
                  onTap: openEmail,
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: const [

                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.email,
                          color: Color(0xFF7E57C2),
                          size: 20,
                        ),
                      ),

                      SizedBox(width: 10),

                      Text(
                        "aisyahdaud04@gmail.com",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                // PHONE
                GestureDetector(
                  onTap: openPhone,
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: const [

                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.phone,
                          color: Color(0xFFEC407A),
                          size: 20,
                        ),
                      ),

                      SizedBox(width: 10),

                      Text(
                        "013-3178395",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                // LINKEDIN
                GestureDetector(
                  onTap: openLinkedIn,
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: const [

                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.work,
                          color: Color(0xFFAB47BC),
                          size: 20,
                        ),
                      ),

                      SizedBox(width: 10),

                      Text(
                        "LinkedIn Profile",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // BIO BOX
                Container(
                  padding: const EdgeInsets.all(18),

                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius:
                        BorderRadius.circular(18),
                  ),

                  child: const Text(
                    "I am student of software engineering who is passionate about creating clean and user-friendly applications. I enjoy learning new technologies and continuously improving my skills in app development.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 14,
                      height: 1.5,
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