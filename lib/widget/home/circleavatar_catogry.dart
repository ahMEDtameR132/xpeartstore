import 'package:flutter/material.dart';

class CircleavatarCatogry extends StatelessWidget {
  const CircleavatarCatogry({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundImage: NetworkImage(
        "https://images.pexels.com/photos/298863/pexels-photo-298863.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      ),
    );
  }
}
