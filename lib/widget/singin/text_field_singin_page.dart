import 'package:flutter/material.dart';
import 'package:shop_app/tools/apptextstyles.dart';
import 'package:shop_app/tools/text_tools.dart';

class TextFieldSinginPage extends StatefulWidget {
  const TextFieldSinginPage({super.key});

  @override
  State<TextFieldSinginPage> createState() => _TextFieldSinginPageState();
}

class _TextFieldSinginPageState extends State<TextFieldSinginPage> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(width: 2, color: Colors.black),
            ),
            hintText: TextTools.email,
            helperStyle: AppTextStyles.googleFontApp3(color: Colors.black),
            suffixIcon: Icon(Icons.email),
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          obscureText: _obscurePassword,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(width: 2, color: Colors.black),
            ),
            hintText: TextTools.password,
            helperStyle: AppTextStyles.googleFontApp3(color: Colors.black),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
              icon: Icon(
                _obscurePassword ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
