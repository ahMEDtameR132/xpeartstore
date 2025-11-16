import 'package:flutter/material.dart';
import 'package:shop_app/widget/home/circleavatar_catogry.dart';

class Listveiwavatar extends StatelessWidget {
  const Listveiwavatar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CircleavatarCatogry();
        },
        itemCount: 20,
      ),
    );
  }
}
