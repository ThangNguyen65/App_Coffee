import 'package:app_coffee/slider_screen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class Bai1 extends StatefulWidget {
  const Bai1({Key? key}) : super(key: key);

  @override
  State<Bai1> createState() => _Bai1State();
}

class _Bai1State extends State<Bai1> {
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white, // đặt màu nền là trắng
        elevation: 0, // bỏ đổ bóng
        iconTheme:
            const IconThemeData(color: Colors.orange), // đặt màu icon là cam
        leading: Row(
          children: const [
            // Icon(Icons.menu, color: Colors.orange),
            // SizedBox(width: 5),
            Text('Ngân ơi, Hi-Tea đi!', style: TextStyle(color: Colors.orange)),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Row(
              children: const [
                Icon(Icons.person),
                SizedBox(width: 15),
                Icon(Icons.notifications),
              ],
            ),
          ),
        ],
      ),
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
              color: Colors.white,
              child: const SliderScreen(),
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.orange,
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
          BottomNavyBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavyBarItem(title: Text('Meny'), icon: Icon(Icons.apps)),
          BottomNavyBarItem(
              title: Text('Message'), icon: Icon(Icons.chat_bubble)),
          BottomNavyBarItem(title: Text('Setting'), icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}
