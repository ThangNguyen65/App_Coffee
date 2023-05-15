import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'SearchProduct.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/bn3.jpg'},
    {"id": 2, "image_path": 'assets/images/bn1.jpg'},
    {"id": 3, "image_path": 'assets/images/bn2.jpg'},
    {"id": 4, "image_path": 'assets/images/bn4.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.orange),
        leading: const Icon(Icons.person),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Row(
              children: [
                InkWell(
                  child: const Icon(Icons.search),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchProduct(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            //slide show
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CarouselSlider(
                        items: imageList
                            .map((item) => Image.asset(
                                  item['image_path'],
                                  width: 380,
                                  height: 380,
                                  fit: BoxFit.cover,
                                ))
                            .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                            scrollPhysics: const BouncingScrollPhysics(),
                            autoPlay: true,
                            aspectRatio: 2,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            }),
                      ),
                    ),
                  ),

                  //nhung nut chon chuyen trang
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map((entry) {
                        print(entry);
                        print(entry.key);
                        return GestureDetector(
                          onTap: () =>
                              carouselController.animateToPage(entry.key),
                          child: Container(
                            width: currentIndex == entry.key ? 30 : 30,
                            height: 7.0,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 3.0,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: currentIndex == entry.key
                                    ? Colors.black
                                    : Colors.white),
                          ),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
