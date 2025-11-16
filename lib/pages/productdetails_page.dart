import 'package:flutter/material.dart';
import 'package:shop_app/pages/card_card_page.dart';
import 'package:shop_app/tools/apptextstyles.dart';
import 'package:shop_app/tools/text_tools.dart';

class ProductDetailsPage extends StatefulWidget {
  final String title;
  final String imageUrl;

  const ProductDetailsPage({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int quantity = 1;
  bool isLiked = false;
  String selectedSize = 'M';
  Color selectedColor = Colors.black;

  void increase() => setState(() => quantity++);

  void decrease() {
    if (quantity > 1) setState(() => quantity--);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: widget.imageUrl,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  widget.imageUrl,
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(child: CircularProgressIndicator());
                  },
                  errorBuilder:
                      (context, error, stackTrace) =>
                          const Center(child: Icon(Icons.error)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white70,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white70,
                  child: IconButton(
                    icon: Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border,
                      color: isLiked ? Colors.red : Colors.black,
                    ),
                    onPressed: () => setState(() => isLiked = !isLiked),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Text(
                  TextTools.DG,
                  style: AppTextStyles.googleFontApp2(color: Colors.black),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 247, 240, 181),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: decrease,
                        color: Colors.black,
                        iconSize: 20,
                      ),
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        child: Text(
                          quantity.toString().padLeft(2, '0'),
                          key: ValueKey(quantity),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: increase,
                        color: Colors.black,
                        iconSize: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  r"From : \$750.00 dollar ",
                  style: AppTextStyles.googleFontApp3(color: Colors.black),
                ),
                Row(
                  children: [
                    for (final color in [
                      Colors.black,
                      Colors.red,
                      Colors.green,
                      Colors.blue,
                      Colors.yellow,
                    ])
                      GestureDetector(
                        onTap: () => setState(() => selectedColor = color),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.5),
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: color,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color:
                                    selectedColor == color
                                        ? Colors.white
                                        : Colors.transparent,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Size :",
                  style: AppTextStyles.googleFontApp3(color: Colors.black),
                ),
                const Spacer(),
                const Icon(Icons.star, color: Colors.yellow),
                const SizedBox(width: 5),
                Text(
                  "4.5/5 (2.6K Reviews)",
                  style: AppTextStyles.googleFontApp3(color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 20,
              children:
                  ['S', 'M', 'L', 'XL', 'XXL']
                      .map(
                        (size) => ChoiceChip(
                          label: Text(
                            size,
                            style: AppTextStyles.googleFontApp3(
                              color: Colors.black,
                            ),
                          ),
                          selected: selectedSize == size,
                          onSelected:
                              (_) => setState(() => selectedSize = size),
                        ),
                      )
                      .toList(),
            ),
            const SizedBox(height: 10),
            Text(
              "Description",
              style: AppTextStyles.googleFontApp3(color: Colors.black),
            ),
            const SizedBox(height: 5),
            Text(
              "Ahmed tamer is a very good man who loves to code, and enjoys creating UI/UX...",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.googleFontApp3(color: Colors.black),
            ),
            TextButton(onPressed: () {}, child: const Text("Read more")),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CardCardPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Add to Cart",
                    style: AppTextStyles.googleFontApp3(color: Colors.black),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Buy now",
                    style: AppTextStyles.googleFontApp3(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
