import 'package:flutter/material.dart';

class StoreDetailScreen extends StatefulWidget {
  final String name;
  final String detailedaddress;
  final String image;
  final String imageDetail_1;
  final String imageDetail_2;
  final String imageDetail_3;
  final String imageDetail_4;
  final String phone;
  final String time;
  final String favorite;
  final String address;
  StoreDetailScreen({
    required this.name,
    required this.image,
    required this.detailedaddress,
    required this.imageDetail_1,
    required this.imageDetail_2,
    required this.imageDetail_3,
    required this.imageDetail_4,
    required this.phone,
    required this.time,
    required this.favorite,
    required this.address,
  });
  State<StoreDetailScreen> createState() => _StoreDetailScreenState();
}

class _StoreDetailScreenState extends State<StoreDetailScreen> {
  bool isHovered = false;
  bool isImageExpanded = false;
  String expandedImageUrl = '';

  void expandImage(String imageUrl) {
    setState(() {
      isImageExpanded = true;
      expandedImageUrl = imageUrl;
    });
  }

  void collapseImage() {
    setState(() {
      isImageExpanded = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int index = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              alignment: Alignment.center,
              height: size.height - 400,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.bottomRight,
                  fit: BoxFit.cover,
                  //Ảnh chính
                  image: isImageExpanded
                      ? NetworkImage(expandedImageUrl) // Hiển thị ảnh lớn
                      : NetworkImage(index == 0
                          ? widget.image
                          : index == 1
                              ? widget.imageDetail_1
                              : index == 2
                                  ? widget.imageDetail_2
                                  : widget
                                      .imageDetail_3), // Sử dụng đường dẫn ảnh mới từ các thuộc tính imageUrl, imageUrl1, imageUrl2 và imageUrl3
                ),
              ),
            ),
          ),
          // Positioned(
          //   top: 20,
          //   left: 5,
          //   child: IconButton(
          //     icon: const Icon(Icons.arrow_back),
          //     color: Colors.white,
          //     onPressed: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          // ),
          Positioned(
            top: 30,
            right: 24,
            child: Container(
              height: 276,
              width: 73,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  //Ảnh nhỏ 1
                  GestureDetector(
                    onTap: () {
                      expandImage(widget.imageDetail_1);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 6),
                      height: 61,
                      width: 61,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey, width: 2),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(widget.imageDetail_1),
                        ),
                      ),
                    ),
                  ),
                  //Ảnh nhỏ 2
                  GestureDetector(
                    onTap: () {
                      expandImage(widget.imageDetail_2);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 6),
                      height: 61,
                      width: 61,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey, width: 2),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(widget.imageDetail_2),
                        ),
                      ),
                    ),
                  ),
                  //Ảnh nhỏ 3
                  GestureDetector(
                    onTap: () {
                      expandImage(widget.imageDetail_3);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 6),
                      height: 61,
                      width: 61,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey, width: 2),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(widget.imageDetail_3),
                        ),
                      ),
                    ),
                  ),
                  //Ảnh nhỏ 4
                  GestureDetector(
                    onTap: () {
                      expandImage(widget.imageDetail_4);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 6),
                      height: 61,
                      width: 61,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey, width: 2),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(widget.imageDetail_4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: size.height / 2,
        width: size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
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
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      color: Color(0xFF404040),
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.address,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.time,
                    style: const TextStyle(
                      color: Color(0xFF404040),
                      fontSize: 18,
                    ),
                  ),
                  //Đường kẻ
                  const Divider(
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
                      child: Icon(
                        Icons.subdirectory_arrow_right_rounded,
                        color: Colors.black,
                        size: 20,
                      ),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        widget.detailedaddress,
                        style: const TextStyle(
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
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: const Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          widget.favorite,
                          style: const TextStyle(
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
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: const Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        widget.phone,
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
