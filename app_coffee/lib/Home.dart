import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'SearchProduct.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
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
              'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
          name: 'VUI HÈ CÓ ĐÔI - DEAL NHÀ CÓ CẶP',
          date: '01/05',
        ),
        Advertisement(
          imageUrl:
              'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
          name: 'HÈ THIỆT VUI - NHÀ KHUI DEAL',
          date: '01/05',
        ),
        Advertisement(
          imageUrl:
              'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
          name: 'MANG ĐI VUI VẺ - NHÀ MỜI 10%',
          date: '01/05',
        ),
        Advertisement(
          imageUrl:
              'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.grey),
        leading: const Icon(
          Icons.person,
          size: 40,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Row(
              children: [
                InkWell(
                  child: const Icon(
                    Icons.search,
                    size: 40,
                  ),
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
            Container(
              height: 200, // Giới hạn chiều cao của ListView
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
                            width: 150,
                            height: 150,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Tra sua',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          const Text(
                            '25.000đ',
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
                            width: 150,
                            height: 150,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Tra sua',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          const Text(
                            '25.000đ',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
                            width: 150,
                            height: 150,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Tra sua',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          const Text(
                            '25.000đ',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
                            width: 150,
                            height: 150,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Tra sua',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          const Text(
                            '25.000đ',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
                            width: 150,
                            height: 150,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Tra sua',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          const Text(
                            '25.000đ',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://i.pinimg.com/736x/94/47/44/944744fafc801a5f2de37158c009a2c3.jpg',
                            width: 150,
                            height: 150,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Tra sua',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          const Text(
                            '25.000đ',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
                                  ? Color.fromARGB(255, 248, 237, 190)
                                  : Colors.grey[200],
                            ),
                            child: Center(
                              child: Text(
                                categories[index].name,
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black87),
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
                          // Xử lý khi người dùng nhấn vào hình ảnh
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
                            Text(
                              categories[selectedCategoryIndex]
                                  .advertisement[0]
                                  .name,
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  categories[selectedCategoryIndex]
                                      .advertisement[0]
                                      .date,
                                  style: TextStyle(fontSize: 16),
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
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Xử lý khi người dùng nhấn vào hình ảnh
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
                            Text(
                              categories[selectedCategoryIndex]
                                  .advertisement[1]
                                  .name,
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  categories[selectedCategoryIndex]
                                      .advertisement[1]
                                      .date,
                                  style: TextStyle(fontSize: 16),
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
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Xử lý khi người dùng nhấn vào hình ảnh
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
                            Text(
                              categories[selectedCategoryIndex]
                                  .advertisement[2]
                                  .name,
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  categories[selectedCategoryIndex]
                                      .advertisement[2]
                                      .date,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Xử lý khi người dùng nhấn vào hình ảnh
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
                            Text(
                              categories[selectedCategoryIndex]
                                  .advertisement[3]
                                  .name,
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  categories[selectedCategoryIndex]
                                      .advertisement[3]
                                      .date,
                                  style: TextStyle(fontSize: 16),
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
      {required this.imageUrl, required this.date, required this.name});
}
