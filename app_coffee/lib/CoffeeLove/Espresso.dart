import 'package:flutter/material.dart';
import 'package:flutter_project/Search/Display_Store.dart';

class Espresso extends StatefulWidget {
  const Espresso({super.key});

  @override
  State<Espresso> createState() => _EspressoState();
}

class _EspressoState extends State<Espresso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Nghệ thuật pha chế - Espresso',
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
                'Nghệ thuật pha chế - Espresso',
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
              'https://feed.thecoffeehouse.com/content/images/2021/08/img_8430_grande.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'HƯƠNG VỊ ĐẾN TỪ Ý',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Nếu bạn là người yêu thích cà phê Espresso, bạn sẽ biết rằng loại cà phê mạnh mẽ đến từ nước Ý này có hương vị rất tuyệt vời. Tuy nhiên, không dễ dàng để homemade một shot Espresso “chuẩn vị” vì áp suất chính là chìa khóa để thực hiện việc này. Do đó cần có một máy pha chuyên dụng dành cho Espresso.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Step 1 - Cân và Xay',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Một tách cà phê ngon luôn được làm từ những hạt cà phê tốt nhất. Vì vậy, Nhà luôn xay mới một lượng cà phê hạt vừa đủ trước mỗi lần pha để đảm bảo hương thơm cũng như mùi vị của tách cà phê.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Step 2 - Nén',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Khá giống với cách bạn nén cà phê phin Việt Nam, bột cà phê sẽ được dàn đều vào Portafilter - có vai trò như một phễu lọc cà phê - và được “nén” chặt bằng Tamper (dụng cụ để nén bột cà phê Espresso).',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Image.network(
                      'https://feed.thecoffeehouse.com/content/images/2021/08/img_8391_grande.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Image.network(
                      'https://feed.thecoffeehouse.com/content/images/2021/08/img_8401_grande.jpg',
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
                          'Step 3 - Pha và Chiết xuất',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Barista sẽ lắp Portafilter vào Machine (máy pha cà phê Espresso) và bắt đầu tiến hành Brew (chiết xuất).',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Image.network(
                            'https://feed.thecoffeehouse.com/content/images/2021/08/img_8430_grande.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Machine sẽ tạo ra áp suất khoảng 9 bar để “ép” nước nóng chảy qua bột cà phê và chiết xuất ra Espresso.',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Image.network(
                            'https://feed.thecoffeehouse.com/content/images/2021/08/img_8450_grande.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Một tách Espresso được đánh giá là chuẩn vị khi có lớp crema màu cánh gián xốp nhẹ và lâu tan. Ngoài ra, Espresso còn là nguyên liệu "nền" cho các thức uống khác như: Americano, Cappuccino, Latte, Mocha...',
                          style: TextStyle(fontSize: 20, color: Colors.black),
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
          ],
        ),
      ),
    );
  }
}
