import 'package:flutter/material.dart';
import 'package:flutter_project/Search/Display_Store.dart';

class ColdBrew extends StatefulWidget {
  const ColdBrew({super.key});

  @override
  State<ColdBrew> createState() => _ColdBrewState();
}

class _ColdBrewState extends State<ColdBrew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Nghệ thuật pha chế - Cold Brew',
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
                'Nghệ thuật pha chế - Cold Brew',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.network(
              'https://feed.thecoffeehouse.com/content/images/2021/08/img_8668_grande-1.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'XU HƯỚNG CÀ PHÊ HIỆN ĐẠI',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Cold Brew (Cold: lạnh, Brew: pha, nôm na là Cà phê pha lạnh) là cách pha cà phê bằng nước ở nhiệt độ bằng hoặc thấp hơn nhiệt độ phòng, thay vì dùng nước nóng đun sôi như cách pha cà phê truyền thống bằng nước nóng ("Hot Brew"). Vị cho ra được đánh giá là “smooth”, “clean”, “fresh” và tốt cho sức khỏe người dùng hơn.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.network(
                    'https://feed.thecoffeehouse.com/content/images/2021/08/img_8668_grande-1.jpg',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Step 1 – Chuẩn bị dụng cụ',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'The Coffee House gợi ý cho bạn công thức 1:10 cho một mẻ Cold Brew hoàn hảo. Cứ mỗi 50gram cà phê sẽ tương đương với 500ml nước.\n\nDụng cụ pha chế Cold Brew gồm: Bình ngâm cà phê, miếng lọc, và bình đựng thành phẩm.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.network(
                    'https://feed.thecoffeehouse.com/content/images/2021/08/img_8623_grande.jpg',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Step 2 – Cân và xay hạt cà phê',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.network(
                    'https://feed.thecoffeehouse.com/content/images/2021/08/img_8626_grande.jpg',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Step 3 – Pha chế',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Cho xen kẽ nước lạnh và cà phê vào bình hãm và dùng que khuấy đảo thật nhẹ nhàng để nước ngấm đều bột cà phê.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.network(
                    'https://feed.thecoffeehouse.com/content/images/2021/08/img_8639_grande.jpg',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Step 4 – Ủ cà phê',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Dùng một miếng vải, khăn sạch đậy kín miệng bình. Để cà phê tự chiết xuất trong thời gian từ 12-24 giờ tùy vào hương vị cuối cùng mà Barista muốn đạt được. Thời gian ngâm sẽ thay đổi hương vị của cà phê sau khi pha. Thời gian càng lâu, cà phê “lên men” càng nhiều, vị chua tự nhiên cũng sinh ra nhiều hơn.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.network(
                    'https://feed.thecoffeehouse.com/content/images/2021/08/img_8641_grande.jpg',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 30),
                  Image.network(
                    'https://feed.thecoffeehouse.com/content/images/2021/08/img_8645_grande.jpg',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Step 5 – Chắt lọc',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Sau 12-24 giờ ngâm cà phê, lọc bỏ phần bã cà phê qua lớp bông lọc hoặc vải lọc.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.network(
                    'https://feed.thecoffeehouse.com/content/images/2021/08/img_8662_grande-1.jpg',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Cà phê cold brew được đánh giá là ngon nhất khi dùng ngay hoặc thêm 1 ít đá. Bạn có thể cảm nhận được độ tươi của cà phê với vị chua tự nhiên của trái cây, đôi khi là mùi cam, quít hoặc mùi trái dâu rừng. Rất thú vị phải không nào.',
                    style: TextStyle(
                      fontSize: 20,
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
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
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
          ],
        ),
      ),
    );
  }
}
