import 'package:app_coffee/BottomNavBar.dart';
import 'package:flutter/material.dart';

class CafeDuongDen extends StatefulWidget {
  const CafeDuongDen({super.key});

  @override
  State<CafeDuongDen> createState() => _CafeDuongDenState();
}

class _CafeDuongDenState extends State<CafeDuongDen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'CÀ PHÊ ĐƯỜNG ĐEN: VƯỢT CHUẨN VỊ QUEN',
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
              MaterialPageRoute(builder: (context) => BottomNavBars()),
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
                'CÀ PHÊ ĐƯỜNG ĐEN: VƯỢT CHUẨN VỊ QUEN',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.network(
              'https://feed.thecoffeehouse.com/content/images/2023/04/NOTI-1600x900.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Điều bạn chờ đợi đã đến!\n\nNhà mang đến cho bạn trải nghiệm mới mẻ cùng dòng sản phẩm Cà Phê Đường Đen.\n\nVốn là 2 nguyên liệu quen thuộc nhưng Cà phê và Đường đen khi kết hợp với nhau, tạo nên sự phá cách bất ngờ trong hương vị. Tưởng quen mà lạ. Tưởng đắng nhưng đậm đà, ngọt thơm.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Image.network(
                      'https://feed.thecoffeehouse.com/content/images/2023/04/NOTI-1600x900.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Cùng Nhà “Vượt Chuẩn Vị Quen” với 2 thức uống cực cuốn:\n\n☕ Đường Đen Sữa Đá bùng nổ: Nếu chuộng vị cà phê đậm đà, bùng nổ và thích vị đường đen ngọt thơm, Đường Đen Sữa Đá đích thị là thức uống dành cho bạn. Không chỉ giúp bạn tỉnh táo buổi sáng, Đường Đen Sữa Đá còn hấp dẫn đến ngụm cuối cùng bởi thạch cà phê giòn dai, nhai cực cuốn.\n\n☕ Đường Đen Marble Latte dịu êm cực hấp dẫn bởi vị cà phê đắng nhẹ hoà quyện cùng vị đường đen ngọt thơm và sữa tươi béo mịn. Sự kết hợp đầy mới mẻ của cà phê và đường đen cũng tạo nên diện mạo phân tầng đẹp mắt. Đây là lựa chọn đáng thử để bạn khởi đầu ngày mới đầy hứng khởi.\n\nFan Nhà ghiền vị cà phê, mê đường đen có thêm gợi ý mới cho buổi sáng đầy hứng khởi rồi nha.\n\nGhé Nhà thử ngay!',
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
                SizedBox(height: 10),
                Text(
                  'MÌNH CÀ PHÊ NHÉ!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
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
