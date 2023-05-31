import 'package:flutter/material.dart';
import 'package:flutter_project/Search/Display_Store.dart';

class KhuyenMai2 extends StatefulWidget {
  const KhuyenMai2({super.key});

  @override
  State<KhuyenMai2> createState() => _KhuyenMai2State();
}

class _KhuyenMai2State extends State<KhuyenMai2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'VUI HÈ CÓ ĐÔI - DEAL NHÀ CÓ CẶP',
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
                'VUI HÈ CÓ ĐÔI - DEAL NHÀ CÓ CẶP',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.network(
              'https://feed.thecoffeehouse.com/content/images/2023/04/NOTI--9-.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nóng hơn nhiệt độ ngay lúc này, chính là chiếc deal “so hot” MUA 1 TẶNG 1 + FREESHIP của Nhà đây ^^',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Image.network(
                      'https://feed.thecoffeehouse.com/content/images/2023/04/NOTI--9-.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      '🔸Thời gian: 01.05 - 31.05\n\n🔸Nhập mã: CODOI\n\n🔸Áp dụng Bộ sưu tập Cà Phê Đường Đen và Hi-Tea Kombucha Detox cho đơn Giao hàng\n\n Hè này thiệt vui rồi nhé, vì có Nhà khao hẳn bộ đôi món mới. Quá đã luôn 😘😘\n\n 👉 Rủ liền “mai đẹt ti ni” chốt đơn ngay!',
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
