import 'package:app_coffee/store/Display_Store.dart';
import 'package:app_coffee/home/Home.dart';
import 'package:app_coffee/product/product.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'khac/Khac.dart';

class BottomNavBars extends StatefulWidget {
  const BottomNavBars({Key? key}) : super(key: key);

  @override
  State<BottomNavBars> createState() => _BottomNavBarsState();
}

class _BottomNavBarsState extends State<BottomNavBars> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              child: const SliderScreen(),
            ),
            Container(
              child: const testProduct(),
            ),
            Container(
              child: const MyHome(),
            ),
            Container(
              child: const Khac(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() {
            _pageController.jumpToPage(index);
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: const Text('Trang chủ'),
            icon: const Icon(
              Icons.home,
              color: Color.fromARGB(255, 114, 74, 4),
            ),
            activeColor: Color.fromARGB(255, 114, 74, 4),
          ),
          BottomNavyBarItem(
            title: const Text('Đặt hàng'),
            icon: const Icon(Icons.food_bank_sharp),
            activeColor: Color.fromARGB(255, 114, 74, 4),
          ),
          BottomNavyBarItem(
            title: const Text('Cửa hàng'),
            icon: const Icon(Icons.shop_two_rounded),
            activeColor: Color.fromARGB(255, 114, 74, 4),
          ),
          BottomNavyBarItem(
            title: const Text('Khác'),
            icon: const Icon(Icons.wrap_text_outlined),
            activeColor: Color.fromARGB(255, 114, 74, 4),
          ),
        ],
      ),
    );
  }
}
