import 'package:app_coffee/Uu_Dai_Dac_Biet/Promotion1.dart';
import 'package:app_coffee/Uu_Dai_Dac_Biet/Promotion2.dart';
import 'package:app_coffee/Uu_Dai_Dac_Biet/Promotion3.dart';
import 'package:app_coffee/Uu_Dai_Dac_Biet/Promotion4.dart';
import 'package:app_coffee/cart/Cart.dart';
import 'package:app_coffee/home/HomeProduct.dart';
import 'package:app_coffee/home/HomeSlideshow.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../product/SearchProduct.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class Category {
  final String name;
  final List<Advertisement> advertisement;
  Category({required this.name, required this.advertisement});
}

class Advertisement {
  final String imageUrl;
  final String name;
  final String date;
  Advertisement(
      {required this.imageUrl, required this.name, required this.date});
}

class _SliderScreenState extends State<SliderScreen> {
  // Chọn loại sản phẩm được chọn
  int selectedCategoryIndex = 0;

  List<Category> categories = [
    Category(
      name: "Ưu Đãi Đặc Biệt",
      advertisement: [
        Advertisement(
          imageUrl:
              'https://feed.thecoffeehouse.com/content/images/2023/04/NOTI--8-.jpg',
          name: 'HÈ CÓ ĐÔI - DEAL NHÀ CÓ CẶP',
          date: '01/05',
        ),
        Advertisement(
          imageUrl:
              'https://feed.thecoffeehouse.com/content/images/2023/04/NOTI--9-.jpg',
          name: 'HÈ THIỆT VUI - NHÀ KHUI DEAL',
          date: '01/05',
        ),
        Advertisement(
          imageUrl:
              'https://feed.thecoffeehouse.com/content/images/2023/04/NOTI--5-.jpg',
          name: 'MANG ĐI VUI VẺ - NHÀ MỜI 10%',
          date: '01/05',
        ),
        Advertisement(
          imageUrl:
              'https://feed.thecoffeehouse.com/content/images/2023/04/noti--7-.jpg',
          name: 'KHAO DEAL BẤT NGỜ',
          date: '01/05',
        ),
      ],
    ),
    Category(
      name: "Cập Nhật Từ Nhà",
      advertisement: [
        Advertisement(
          imageUrl:
              'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
          name: 'MINIGAME: NHÀ MÌNH CÓ NHAU',
          date: '12/05',
        ),
        Advertisement(
          imageUrl:
              'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
          name: 'MINIGAME: NHÀ MÌNH CÓ NHAU',
          date: '14/04',
        ),
        Advertisement(
          imageUrl:
              'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
          name: 'CÀ PHÊ ĐƯỜNG ĐEN: VƯỢT CHUẨN VỊ QUEN',
          date: '04/04',
        ),
        Advertisement(
          imageUrl:
              'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
          name: 'THE COFFEE HOUSE MIỄN PHÍ GIAO HÀNG',
          date: '03/01',
        ),
      ],
    ),
    Category(
      name: "#CoffeeLover",
      advertisement: [
        Advertisement(
          imageUrl:
              'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
          name: 'Nghệ thuật phá chế -V60',
          date: '29/08',
        ),
        Advertisement(
          imageUrl:
              'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
          name: 'Nghệ thuật pha chế - Kalita Wave',
          date: '28/08',
        ),
        Advertisement(
          imageUrl:
              'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
          name: 'Nghệ thuật pha chế - Cold Brew',
          date: '27/08',
        ),
        Advertisement(
          imageUrl:
              'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
          name: 'Nghệ thuật pha chế - Espresso',
          date: '26/08',
        ),
      ],
    ),
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0), // Chiều cao của đường viền
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey, // Màu sắc của đường viền
                  width: 1.0, // Độ dày của đường viền
                ),
              ),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 114, 74, 4),
        ),
        leading: const Icon(Icons.person, size: 35),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.search, size: 35),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const SearchProduct(),
                    //   ),
                    // );
                  },
                ),
                IconButton(
                  icon: Stack(
                    children: [
                      const Icon(Icons.shopping_cart, size: 35),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 16,
                            minHeight: 16,
                          ),
                          child: StreamBuilder<QuerySnapshot>(
                            stream: FirebaseFirestore.instance
                                .collection('carts')
                                .snapshots(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                final cartItems = snapshot.data!.docs;
                                final itemCount = cartItems.length;
                                return Text(
                                  '$itemCount',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.center,
                                );
                              }
                              return const Text(
                                '0',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      //backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 7),
            //slide show
            Center(
              child: HomeSlideshow(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    EdgeInsets.only(left: 12), // Điều chỉnh giá trị left tùy ý
                child: Text(
                  'Gợi ý cho bạn:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            //Product Home 1
            HomeProducts(),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    EdgeInsets.only(left: 12), // Điều chỉnh giá trị left tùy ý
                child: Text(
                  'Khám Phá Thêm:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        categories.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategoryIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: selectedCategoryIndex == index
                                  ? Color.fromARGB(128, 255, 247, 230)
                                  : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                categories[index].name,
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // uu dai dac biet 1
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const KhuyenMai()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                categories[selectedCategoryIndex]
                                    .advertisement[0]
                                    .imageUrl,
                                width: 180,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              categories[selectedCategoryIndex]
                                  .advertisement[0]
                                  .name,
                              style: const TextStyle(fontSize: 20),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.calendar_today,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  categories[selectedCategoryIndex]
                                      .advertisement[0]
                                      .date,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    //uu dai dac biet 2
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const KhuyenMai2()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                categories[selectedCategoryIndex]
                                    .advertisement[1]
                                    .imageUrl,
                                width: 180,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              categories[selectedCategoryIndex]
                                  .advertisement[1]
                                  .name,
                              style: const TextStyle(fontSize: 20),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.calendar_today,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  categories[selectedCategoryIndex]
                                      .advertisement[1]
                                      .date,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10), // Khoảng cách giữa hai hàng
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    //uu dai dac biet 3
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const KhuyenMai3()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                categories[selectedCategoryIndex]
                                    .advertisement[2]
                                    .imageUrl,
                                width: 180,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              categories[selectedCategoryIndex]
                                  .advertisement[2]
                                  .name,
                              style: const TextStyle(fontSize: 20),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.calendar_today,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  categories[selectedCategoryIndex]
                                      .advertisement[2]
                                      .date,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    //uu dai dac biet 4
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const KhuyenMai4()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                categories[selectedCategoryIndex]
                                    .advertisement[3]
                                    .imageUrl,
                                width: 180,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              categories[selectedCategoryIndex]
                                  .advertisement[3]
                                  .name,
                              style: const TextStyle(fontSize: 20),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.calendar_today,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  categories[selectedCategoryIndex]
                                      .advertisement[3]
                                      .date,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
