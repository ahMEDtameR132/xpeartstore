import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shop_app/widget/home/listveiwavatar.dart';
import 'package:shop_app/widget/home/searchbar_home.dart';
import 'package:shop_app/widget/home/sliverlist_home.dart';
import 'package:shop_app/widget/home/text/text_widget_home.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  int _currentIndex = 0;

  final List<String> imageUrls = [
    "https://images.pexels.com/photos/298863/pexels-photo-298863.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/1884584/pexels-photo-1884584.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/52518/jeans-pants-blue-shop-52518.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SearchbarHome()),
        const SliverToBoxAdapter(child: SizedBox(height: 12.5)),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(
                      milliseconds: 800,
                    ),
                    viewportFraction: 1.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items:
                      imageUrls.map((url) {
                        return Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(url),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(0, 2),
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      imageUrls.asMap().entries.map((entry) {
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                _currentIndex == entry.key
                                    ? const Color.fromARGB(255, 217, 255, 0)
                                    : Colors.grey.withOpacity(0.5),
                          ),
                        );
                      }).toList(),
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 6.5)),
        SliverToBoxAdapter(child: TextWidgetHome()),
        const SliverToBoxAdapter(child: SizedBox(height: 6.5)),
        SliverToBoxAdapter(child: Listveiwavatar()),
        const SliverToBoxAdapter(child: SizedBox(height: 6.5)),
        SliverToBoxAdapter(child: TextWidgetHome()),
        const SliverToBoxAdapter(child: SizedBox(height: 6.5)),
        SliverlistHome(),
      ],
    );
  }
}
