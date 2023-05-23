import 'package:flutter/material.dart';

import 'SearchProduct.dart';

class testProduct extends StatefulWidget {
  const testProduct({super.key});

  @override
  State<testProduct> createState() => _testProductState();
}

class _testProductState extends State<testProduct> {
  // Danh sách các loại sản phẩm
  List<Category> categories = [
    Category(
      name: 'CÀ PHÊ',
      products: [
        Product(
          name: 'Phin Đen Đá',
          imageUrl: 'assets/images/coffee.png',
          price: 1.99,
        ),
        Product(
          name: 'Bạc Xỉu Đá',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Bạc Xỉu Nóng',
          imageUrl: 'assets/images/tea.png',
          price: 1.99,
        ),
        Product(
          name: 'Phin Đen Nóng',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Phin Sữa Nóng',
          imageUrl: 'assets/images/tea.png',
          price: 1.99,
        ),
      ],
    ),
    Category(
      name: 'CÀ PHÊ PHA MÁY',
      products: [
        Product(
          name: 'Americano Nóng',
          imageUrl: 'assets/images/tea.png',
          price: 1.99,
        ),
        Product(
          name: 'Caramel Macchiato Đá',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Cappuccino Đá',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Espresso',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Latte Nóng',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Mocha Nóng',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Cappuccino Nóng',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Latte Đá',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Mocha Đá',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Americano Đá',
          imageUrl: 'assets/images/tea.png',
          price: 1.99,
        ),
        Product(
          name: 'Caramel Macchiato Nóng',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
      ],
    ),
    Category(
      name: 'Trà',
      products: [
        Product(
          name: 'Trà Dưa Hấu Vải',
          imageUrl: 'assets/images/tea.png',
          price: 1.99,
        ),
        Product(
          name: 'Trà Xanh Đậu Đỏ Nóng',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Trà Thạch Đào',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Trà Sen Vàng Nóng',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Trà Sen Vàng',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Trà Xanh Đậu Đỏ ',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Trà Thạch Đào Nóng',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Trà Thạch Đào',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Trà Thạch Vải',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Trà Sen Vàng Củ Năng Nóng',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Trà Thanh Đào Nóng',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'Trà Thạch Vải Nóng',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
      ],
    ),
    Category(
      name: 'PHINDI',
      products: [
        Product(
          name: 'PhinDi Hạnh Nhân',
          imageUrl: 'assets/images/coffee.png',
          price: 3.99,
        ),
        Product(
          name: 'PhinDi Choco',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
        Product(
          name: 'PhinDi Kem Sữa',
          imageUrl: 'assets/images/tea.png',
          price: 2.99,
        ),
      ],
    ),
  ];
  // Chọn loại sản phẩm được chọn
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.grey),
        leading: const Icon(
          Icons.person,
          size: 40,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              children: [
                InkWell(
                  child: const Icon(
                    Icons.search,
                    size: 40,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchProduct(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  Icons.shopping_cart,
                  size: 35,
                )
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // const SizedBox(
          //   height: 50,
          // ),
          // Container(
          //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          //   child: TextField(
          //     style: const TextStyle(color: Colors.black),
          //     cursorHeight: 10,
          //     decoration: InputDecoration(
          //       contentPadding: const EdgeInsets.symmetric(
          //           vertical: -8, horizontal: 20), // Giảm chiều cao ở đây
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(20.0),
          //       ),
          //       hintText: "Tìm kiếm tên nước",
          //       suffixIcon: const Icon(Icons.search),
          //     ),
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => const SearchProduct()),
          //       );
          //     },
          //   ),
          // ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      categories.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategoryIndex = index;
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: selectedCategoryIndex == index ? 2 : 0,
                                color: selectedCategoryIndex == index
                                    ? Colors.blue
                                    : Colors.transparent,
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                categories[index].products[0].imageUrl,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                categories[index].name,
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 18),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    categories[selectedCategoryIndex].name,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: categories[selectedCategoryIndex].products.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              categories[selectedCategoryIndex]
                                  .products[index]
                                  .imageUrl,
                              width: 80,
                              height: 70,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              categories[selectedCategoryIndex]
                                  .products[index]
                                  .name,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Text(
                        '\$${categories[selectedCategoryIndex].products[index].price}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Category {
  final String name;
  final List<Product> products;

  Category({required this.name, required this.products});
}

class Product {
  final String name;
  final String imageUrl;
  final double price;

  Product({required this.name, required this.imageUrl, required this.price});
}
