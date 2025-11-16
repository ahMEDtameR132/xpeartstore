import 'package:flutter/material.dart';
import 'package:shop_app/tools/apptextstyles.dart';
import 'package:shop_app/tools/text_tools.dart';

class TextFieldLoginPage extends StatefulWidget {
  const TextFieldLoginPage({super.key});

  @override
  State<TextFieldLoginPage> createState() => _TextFieldLoginPageState();
}

class _TextFieldLoginPageState extends State<TextFieldLoginPage> {
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
            hintText: TextTools.phone,
            helperStyle: AppTextStyles.googleFontApp3(color: Colors.black),
            suffixIcon: Icon(Icons.phone),
          ),
        ),
        const SizedBox(height: 20),
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
