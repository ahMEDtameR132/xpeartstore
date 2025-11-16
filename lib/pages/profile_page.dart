import 'package:flutter/material.dart';
import 'package:shop_app/pages/splash_page.dart';
import 'package:shop_app/tools/apptextstyles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [IconButton(icon: Icon(Icons.settings), onPressed: () {})],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Ahmed Tamer",
                style: AppTextStyles.googleFontApp3(color: Colors.black),
              ),
              const SizedBox(height: 15),
              CircleAvatar(
                backgroundImage: AssetImage("assets/image/ahmed tamer.jpg"),
                radius: 60,
              ),
              const SizedBox(height: 25),
              Text(
                "Email: ahmedtamer@example.com",
                style: AppTextStyles.googleFontApp3(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Text(
                "Phone: +20 123 456 789",
                style: AppTextStyles.googleFontApp3(color: Colors.grey),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SplashPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // لون الزر
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text("Log Out"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
