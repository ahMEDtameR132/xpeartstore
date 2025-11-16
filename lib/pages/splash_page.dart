import 'package:flutter/material.dart';
import 'package:shop_app/pages/login_page.dart';
import 'package:shop_app/tools/apptextstyles.dart';
import 'package:shop_app/widget/home/bottombar_app.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello Sir or Madam in the X PEART STORE",
              style: AppTextStyles.googleFontApp3(color: Colors.black),
            ),
            const SizedBox(height: 8),
            Text(
              "Please select your registration method ",
              style: AppTextStyles.googleFontApp3(color: Colors.black),
            ),
            const SizedBox(height: 8),
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/image/x.png"),
              radius: 50,
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text(
                "login A Guest",
                style: AppTextStyles.googleFontApp3(color: Colors.black),
              ),
            ),
            const SizedBox(height: 5.5),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text(
                "Create an account",
                style: AppTextStyles.googleFontApp3(color: Colors.black),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
