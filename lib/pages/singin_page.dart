import 'package:flutter/material.dart';
import 'package:shop_app/tools/apptextstyles.dart';
import 'package:shop_app/tools/text_tools.dart';
import 'package:shop_app/widget/singin/text_field_singin_page.dart';

class SinginPage extends StatefulWidget {
  const SinginPage({super.key});

  @override
  State<SinginPage> createState() => _SinginPageState();
}

class _SinginPageState extends State<SinginPage> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                TextTools.login,
                style: AppTextStyles.googleFontApp2(color: Colors.black),
              ),
              const SizedBox(height: 20),
              TextFieldSinginPage(),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Forgot password",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  TextTools.login,
                  style: AppTextStyles.googleFontApp3(color: Colors.black),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: const Color.fromARGB(255, 10, 10, 10),
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or continue with",
                      style: TextStyle(
                        color: const Color.fromARGB(137, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: const Color.fromARGB(255, 19, 19, 19),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1200px-Google_%22G%22_logo.svg.png",
                      ),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {},
                      icon: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZOV_1qts84oxE2Ux6BUibAVKIc_chKaJYog&s",
                      ),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {},
                      icon: Image.network(
                        "https://store-images.s-microsoft.com/image/apps.30645.9007199266245907.cb06f1f9-9154-408e-b4ef-d19f2325893b.ac3b465e-4384-42a8-9142-901c0405e1bc",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Nwe user?",
                    style: AppTextStyles.googleFontApp3(color: Colors.black),
                  ),
                  Text(
                    "Create account",
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
