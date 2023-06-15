import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeSlideshow extends StatefulWidget {
  @override
  _HomeSlideshowState createState() => _HomeSlideshowState();
}

class _HomeSlideshowState extends State<HomeSlideshow> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();
  List<Map<String, dynamic>> imageList = [];

  @override
  void initState() {
    super.initState();
    loadDataFromFirebase();
  }

  void loadDataFromFirebase() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    DocumentSnapshot snapshot =
        await firestore.collection('home').doc('rgBraFsT1cGqbrZRsYwv').get();

    if (snapshot.exists) {
      Map<String, dynamic>? data = snapshot.data() as Map<String, dynamic>?;

      if (data != null) {
        List<String?> slideshowPaths = [
          data['slideshow1'],
          data['slideshow2'],
          data['slideshow3'],
          data['slideshow4'],
        ];

        List<Map<String, dynamic>> tempList = [];
        slideshowPaths.forEach((path) {
          if (path != null) {
            tempList.add({'image_path': path});
          }
        });

        setState(() {
          imageList = tempList;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
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
                    .map(
                      (item) => Image.network(
                        item['image_path'],
                        width: 380,
                        height: 380,
                        fit: BoxFit.cover,
                      ),
                    )
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
                  },
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    width: currentIndex == entry.key ? 30 : 7,
                    height: 7.0,
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentIndex == entry.key
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
