import 'package:flutter/material.dart';

class describe extends StatefulWidget {
  const describe({super.key});

  @override
  State<describe> createState() => _describeState();
}

class _describeState extends State<describe> {
  bool isHovered = false; //sự kiện Đã thêm vào danh sách yêu thích
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          //Ảnh lớn Mô tả
          Positioned(
            top: 0,
            // child: ClipRRect(
            //   borderRadius: BorderRadius.only(
            //     bottomLeft: Radius.circular(50.0),
            //     bottomRight: Radius.circular(50.0),
            //   ),
            child: Container(
              alignment: Alignment.center,
              height: size.height - 400,
              width: size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.bottomRight,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.vietnamembassy-arabsaudi.org/wp-content/uploads/2018/12/thinker-and-dreamer-coffee-1468217796-341239-1476858100.jpg'))),
            ),
          ),

          //Thanh nhỏ ảnh bên phải
          Positioned(
              top: 100,
              right: 24,
              child: Container(
                height: 276,
                width: 73,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  //Ảnh 1 thanh nhỏ
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    height: 61,
                    width: 61,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey, width: 2),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.foody.vn/images/foody-jouri-dessert-tea-828-636179332977280733(1).jpg'))),
                  ),
                  //Ảnh 2 thanh nhỏ
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    height: 61,
                    width: 61,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey, width: 2),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.foody.vn/images/foody-jouri-dessert-tea-828-636179332977280733(1).jpg'))),
                  ),
                  //Ảnh 3 thanh nhỏ
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    height: 61,
                    width: 61,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey, width: 2),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.foody.vn/images/foody-jouri-dessert-tea-828-636179332977280733(1).jpg'))),
                  ),
                  //Ảnh 4 thanh nhỏ
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    height: 61,
                    width: 61,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey, width: 2),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.foody.vn/images/foody-jouri-dessert-tea-828-636179332977280733(1).jpg'))),
                  ),
                ]),
              )),
        ],
      ),
      bottomSheet: Container(
        height: size.height / 2,
        width: size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(34),
          //   topRight: Radius.circular(34),
          // ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  height: 5,
                  width: 32 * 1.5,
                  decoration: BoxDecoration(
                    gradient: AppColor.gradient,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Cái tiệm Coffee",
                    style: TextStyle(
                      color: Color(0xFF404040),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '296 Quang Trung',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Giờ mở cửa: 7:00 - 22:00',
                    style: TextStyle(
                      color: Color(0xFF404040),
                      fontSize: 18,
                    ),
                  ),
                  //Đường kẻ
                  Divider(
                    height: 30,
                    thickness: 1,
                    color: Color(0xFFBDBDBD),
                    indent: 0,
                    endIndent: 0,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: const Icon(
                        Icons.subdirectory_arrow_right_rounded,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Expanded(
                      child: Text(
                        '293 Quang Trung, Quận Gò Vấp, Hồ Chí Minh, Việt Nam',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              //Đường kẻ
              Divider(
                height: 30,
                thickness: 1,
                color: Colors.grey[400],
                indent: 0,
                endIndent: 0,
              ),
              const SizedBox(
                height: 8,
              ),
              //Hiển thị thông báo "Thêm vào danh sách yêu thích"
              Container(
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 24.0),
                                child: Column(
                                  children: [
                                    const Text(
                                      'Thông báo',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25.0,
                                      ),
                                    ),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.check_circle,
                                          color:
                                              Color.fromARGB(255, 82, 172, 246),
                                        ),
                                        SizedBox(width: 8.0),
                                        Text(
                                          'Đã thêm vào danh sách yêu thích.',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Đóng'),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Expanded(
                        child: Text(
                          'Thêm vào danh sách yêu thích',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 8,
              ),
              //Đường kẻ
              Divider(
                height: 30,
                thickness: 1,
                color: Colors.grey[400],
                indent: 0,
                endIndent: 0,
              ),
              const SizedBox(
                height: 8,
              ),
              //Hiển thị thông báo liên hệ
              Container(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 200,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Liên hệ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Đóng'),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Expanded(
                      child: Text(
                        'Liên hệ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppColor {
  static const Color primaryColor = Color(0xFF3366FF);
  static const Color accentColor = Color(0xFF00CCFF);

  static const LinearGradient gradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      primaryColor,
      accentColor,
    ],
  );
}
