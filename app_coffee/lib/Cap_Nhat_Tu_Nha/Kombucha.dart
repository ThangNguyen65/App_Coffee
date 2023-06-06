import 'package:flutter/material.dart';

import '../Display_Store.dart';

class Kombucha extends StatefulWidget {
  const Kombucha({super.key});

  @override
  State<Kombucha> createState() => _KombuchaState();
}

class _KombuchaState extends State<Kombucha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'HI-TEA KOMBUCHA DETOX - GỌN DÁNG SÁNG DA',
          style: TextStyle(color: Colors.black, fontSize: 20),
          // overflow: TextOverflow.visible,
        ),
        backgroundColor: Colors.white,
        elevation: 1.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MyHome()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text(
                'HI-TEA KOMBUCHA DETOX - GỌN DÁNG SÁNG DA',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.network(
              'https://feed.thecoffeehouse.com/content/images/2023/04/NOTI--4-.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Phiên bản nâng cấp của Bộ sưu tập Hi-Tea Healthy đến rồi đây team healthy, mê detox ơi 😍',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Image.network(
                      'https://feed.thecoffeehouse.com/content/images/2023/04/NOTI--6-.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Với nền trà Hibiscus không caffeine kết hợp cùng trà lên men cao cấp Kombucha và hương vị trái cây tươi mát,',
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(height: 20),
                        RichText(
                          text: const TextSpan(
                            text: 'Hi-Tea Đào Kombucha gọn dáng: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                            children: [
                              TextSpan(
                                text:
                                    'Trà hoa Hibiscus 0% caffeine chua nhẹ, kết hợp cùng trà lên men Kombucha hoàn toàn tự nhiên và Đào thanh mát tạo nên Hi-Tea Đào Kombucha chua ngọt cực cuốn. Đặc biệt Kombucha Detox giàu axit hữu cơ, Đào nhiều chất xơ giúp thanh lọc cơ thể và hỗ trợ giảm cân hiệu quả.',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        RichText(
                          text: const TextSpan(
                            text: 'Hi-Tea Yuzu Kombucha sáng da: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                            children: [
                              TextSpan(
                                text:
                                    'Trà hoa Hibiscus 0% caffeine thanh mát, hòa quyện cùng trà lên men Kombucha 100% tự nhiên và mứt Yuzu Marmalade (quýt Nhật) mang đến hương vị chua chua lạ miệng. Đặc biệt, Hi-Tea Yuzu Kombucha cực hợp cho team thích detox, muốn sáng da nhờ Kombucha Detox nhiều chất chống oxy hoá cùng Yuzu giàu vitamin C.',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.coffee, size: 30),
                            SizedBox(width: 10),
                            Text(
                              'MÌNH CÀ PHÊ NHÉ!',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            '👉 Ghé Nhà nha: https://tchapp.page.link/menu609 \n\n👉 Điện thoại: 18006936',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
