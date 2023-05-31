import 'package:flutter/material.dart';
import 'package:flutter_project/Search/Display_Store.dart';

class KhuyenMai5 extends StatefulWidget {
  const KhuyenMai5({super.key});

  @override
  State<KhuyenMai5> createState() => _KhuyenMai5State();
}

class _KhuyenMai5State extends State<KhuyenMai5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'MÌNH GẦN NHAU HƠN - NHÀ TẶNG NGAY 1 BÁNH',
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
                'MÌNH GẦN NHAU HƠN - NHÀ TẶNG NGAY 1 BÁNH',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.network(
              'https://feed.thecoffeehouse.com/content/images/2023/04/NOTI--6-.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Gác deadline, mình gần nhau hơn thôi nào bạn ơi 😘',
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
                  const Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Nhà góp chút rôm rả bằng một chiếc bánh thiệt ngon nè. Mình cùng nhâm nhi miếng bánh, uống miếng nước, chuyện trò đã đời bạn nha.\n\n🔸 Nhập mã: GANNHAU\n\n🔸 Thời gian: 01.05 - 31.05\n\n🔸 Áp dụng khi mua 2 nước bất kỳ cho đơn Giao hàng\n\nMở app đặt ngay món yêu thích, xế Nhà đến đây!',
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
