import 'package:flutter/material.dart';
import 'package:shop_app/tools/text_tools.dart';

class SearchbarHome extends StatefulWidget {
  const SearchbarHome({super.key});

  @override
  State<SearchbarHome> createState() => _SearchbarHomeState();
}

class _SearchbarHomeState extends State<SearchbarHome> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: SearchBar(
            hintText: TextTools.searchbarapp,
            leading: Icon(Icons.search),
            trailing: [IconButton(onPressed: () {}, icon: Icon(Icons.mic))],
          ),
        ),
        const SizedBox(width: 6),
        IconButton(
          icon: Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            color: isLiked ? Colors.red : Colors.grey,
            size: 30,
            shadows: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(0, 2),
                spreadRadius: 1,
              ),
            ],
          ),
          onPressed: () {
            setState(() {
              isLiked = !isLiked;
            });
          },
        ),
      ],
    );
  }
}
