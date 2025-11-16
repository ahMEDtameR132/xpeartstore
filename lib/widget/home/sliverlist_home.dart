import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shop_app/pages/productdetails_page.dart';

class SliverlistHome extends StatefulWidget {
  const SliverlistHome({super.key});

  @override
  State<SliverlistHome> createState() => _SliverlistHomeState();
}

class _SliverlistHomeState extends State<SliverlistHome> {
  List<bool> favoriteStatus = List.generate(10, (_) => false);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: MasonryGridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        itemBuilder: (context, index) {
          final height = (index % 3 == 0) ? 270.0 : 230.0;
          final productTitle = "Martine Rose";
          final imageUrl =
              "https://images.pexels.com/photos/298863/pexels-photo-298863.jpeg";

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => ProductDetailsPage(
                        title: productTitle,
                        imageUrl: imageUrl,
                      ),
                ),
              );
            },
            child: Container(
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(
                  children: [
                    // الخلفية
                    Positioned.fill(
                      child: Image.network(imageUrl, fit: BoxFit.cover),
                    ),

                    // التقييم
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 18),
                            SizedBox(width: 4),
                            Text(
                              "4.6",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // زر القلب
                    Positioned(
                      top: 10,
                      right: 10,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            favoriteStatus[index] = !favoriteStatus[index];
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            favoriteStatus[index]
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color:
                                favoriteStatus[index]
                                    ? Colors.red
                                    : Colors.black,
                            size: 24,
                          ),
                        ),
                      ),
                    ),

                    // اسم المنتج والسعر
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Martine Rose",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "\$750.00",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
