import 'package:flutter/material.dart';
import 'package:flutter_project/Search/Display_Store.dart';

class KhuyenMai4 extends StatefulWidget {
  const KhuyenMai4({super.key});

  @override
  State<KhuyenMai4> createState() => _KhuyenMai4State();
}

class _KhuyenMai4State extends State<KhuyenMai4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'ĐÓN HÈ RỰC RỠ - KHAO DEAL BẤT NGỜ',
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
                'ĐÓN HÈ RỰC RỠ - KHAO DEAL BẤT NGỜ',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.network(
              'https://feed.thecoffeehouse.com/content/images/2023/04/noti--7-.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sợ gì cơn nóng ngày hè khi trong tay mình có deal xịn Nhà khao 😝',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Image.network(
                      'https://feed.thecoffeehouse.com/content/images/2023/04/noti--7-.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Từ ngày 01.05 - 31.05, bạn chốt đơn là thấy “mát rượi” tâm hồn liền. Vì dù đơn to, đơn nhỏ đều có Nhà lo:\n\n✅ Giảm 20K cho đơn 50K  - Nhập mã: DONHE20\n\n✅ Giảm 40K cho đơn 139K - Nhập mã: DONHE40\n\n✅ Giảm 55K cho đơn 179K - Nhập mã: DONHE55\n\n✅ Giảm 100K cho đơn 299K - Nhập mã: DONHE100\n\n*Áp dụng bánh, nước cho đơn Giao hàng\n\nĐặt đi chờ chi!',
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
