import 'package:flutter/material.dart';
import 'package:shop_app/tools/apptextstyles.dart';
import 'package:shop_app/tools/text_tools.dart';
import 'package:shop_app/widget/home/bottombar_app.dart';
import 'package:shop_app/widget/login/text_field_login_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Text(
          TextTools.appBarTitle,
          style: AppTextStyles.googleFontApp(
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                TextTools.login,
                style: AppTextStyles.googleFontApp2(color: Colors.black),
              ),
              const SizedBox(height: 20),
              TextFieldLoginPage(),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Text(
                  TextTools.login,
                  style: AppTextStyles.googleFontApp3(color: Colors.black),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an acounte?",
                    style: AppTextStyles.googleFontApp3(color: Colors.black),
                  ),
                  Text(
                    TextTools.singin,
                    style: AppTextStyles.googleFontApp3(color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
