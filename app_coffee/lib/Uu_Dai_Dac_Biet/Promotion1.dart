import 'package:flutter/material.dart';
import 'package:flutter_project/Search/Display_Store.dart';

class KhuyenMai extends StatefulWidget {
  const KhuyenMai({super.key});

  @override
  State<KhuyenMai> createState() => _KhuyenMaiState();
}

class _KhuyenMaiState extends State<KhuyenMai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'HÈ THẬT VUI - NHÀ KHUI DEAL 🎉️️🎉️',
          style: TextStyle(color: Colors.black, fontSize: 20),
          // overflow: TextOverflow.visible,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text(
                'HÈ THẬT VUI - NHÀ KHUI DEAL 🎉️️🎉️',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.network(
              'https://feed.thecoffeehouse.com/content/images/2023/04/NOTI--8-.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Chill hè chất ngất cùng hội “cạ cứng”, có Nhà góp vui hết cỡ cùng chiếc deal GIẢM 50% + FREESHIP siêu xịn đây 😍',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Image.network(
                      'https://feed.thecoffeehouse.com/content/images/2023/04/NOTI--8-.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Đặc biệt, bạn cứ chốt đơn mê say suốt tháng còn lại để Nhà lo ^^\n\n🍃 Thời gian: 01.05 - 31.05 (Thứ 2 - Thứ 6)\n\n🍃 Nhập mã: VUIHE\n\n🍃 Áp dụng cho đơn Giao hàng từ 4 ly bất kỳ\n\nNhà mời deal rồi, đến lượt bạn chốt đơn thôi!\n\n\nMÌNH CÀ PHÊ NHÉ!\n\n👉 Chốt đơn ngay: https://tchapp.page.link/menu609\n\n👉 Điện thoại: 18006936',
                      style: TextStyle(fontSize: 20),
                    ),
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
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
    );
  }
}
