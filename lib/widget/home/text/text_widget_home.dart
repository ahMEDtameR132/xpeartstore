import 'package:flutter/material.dart';
import 'package:shop_app/tools/apptextstyles.dart';
import 'package:shop_app/tools/text_tools.dart';

class TextWidgetHome extends StatelessWidget {
  const TextWidgetHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Text(
            TextTools.selectbycategory,
            style: AppTextStyles.googleFontApp2(color: Colors.black),
          ),
          const Spacer(),
          Text(
            TextTools.seeall,
            style: AppTextStyles.googleFontApp2(color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
