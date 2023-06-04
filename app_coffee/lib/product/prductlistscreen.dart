import 'package:app_coffee/product/product.dart';
import 'package:app_coffee/product/SearchProduct.dart';
import 'package:app_coffee/cart/Cart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  String selectedCategory = 'Cà Phê Pha Máy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0), // Chiều cao của đường viền
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey, // Màu sắc của đường viền
                  width: 1.0, // Độ dày của đường viền
                ),
              ),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 114, 74, 4),
        ),
        leading: const Icon(Icons.person, size: 35),
        title: const Center(
          child: Text('Thực Đơn'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.search, size: 35),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const SearchProduct(),
                    //   ),
                    // );
                  },
                ),
                IconButton(
                  icon: Stack(
                    children: [
                      const Icon(Icons.shopping_cart, size: 35),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 16,
                            minHeight: 16,
                          ),
                          child: StreamBuilder<QuerySnapshot>(
                            stream: FirebaseFirestore.instance
                                .collection('carts')
                                .snapshots(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                final cartItems = snapshot.data!.docs;
                                final itemCount = cartItems.length;
                                return Text(
                                  '$itemCount',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.center,
                                );
                              }
                              return const Text(
                                '0',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    height: 70,
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Cà Phê Pha Máy';
                      });
                    },
                    child: Container(
                      padding:
                          const EdgeInsets.only(bottom: 2, left: 10, right: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: selectedCategory == 'Cà Phê Pha Máy' ? 2 : 0,
                            color: selectedCategory == 'Cà Phê Pha Máy'
                                ? Colors.black
                                : Colors.transparent,
                          ),
                        ),
                      ),
                      child: Text(
                        'Cà Phê Pha Máy',
                        style: TextStyle(
                          fontSize: 17,
                          color: selectedCategory == 'Cà Phê Pha Máy'
                              ? Colors.black
                              : Colors.grey,
                          fontWeight: selectedCategory == 'Cà Phê Pha Máy'
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Cà Phê Truyền Thống';
                      });
                    },
                    child: Container(
                      padding:
                          const EdgeInsets.only(bottom: 2, left: 10, right: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: selectedCategory == 'Cà Phê Truyền Thống'
                                ? 2
                                : 0,
                            color: selectedCategory == 'Cà Phê Truyền Thống'
                                ? Colors.black
                                : Colors.transparent,
                          ),
                        ),
                      ),
                      child: Text(
                        'Cà Phê Truyền Thống',
                        style: TextStyle(
                          fontSize: 17,
                          color: selectedCategory == 'Cà Phê Truyền Thống'
                              ? Colors.black
                              : Colors.grey,
                          fontWeight: selectedCategory == 'Cà Phê Truyền Thống'
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Trà';
                      });
                    },
                    child: Container(
                      padding:
                          const EdgeInsets.only(bottom: 2, left: 10, right: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: selectedCategory == 'Trà' ? 2 : 0,
                            color: selectedCategory == 'Trà'
                                ? Colors.black
                                : Colors.transparent,
                          ),
                        ),
                      ),
                      child: Text(
                        'Trà',
                        style: TextStyle(
                          fontSize: 17,
                          color: selectedCategory == 'Trà'
                              ? Colors.black
                              : Colors.grey,
                          fontWeight: selectedCategory == 'Trà'
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Đá xoay';
                      });
                    },
                    child: Container(
                      padding:
                          const EdgeInsets.only(bottom: 2, left: 10, right: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: selectedCategory == 'Đá xoay' ? 2 : 0,
                            color: selectedCategory == 'Đá xoay'
                                ? Colors.black
                                : Colors.transparent,
                          ),
                        ),
                      ),
                      child: Text(
                        'Đá xoay',
                        style: TextStyle(
                          fontSize: 17,
                          color: selectedCategory == 'Đá xoay'
                              ? Colors.black
                              : Colors.grey,
                          fontWeight: selectedCategory == 'Đá xoay'
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Bánh ngọt';
                      });
                    },
                    child: Container(
                      padding:
                          const EdgeInsets.only(bottom: 2, left: 10, right: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: selectedCategory == 'Bánh ngọt' ? 2 : 0,
                            color: selectedCategory == 'Bánh ngọt'
                                ? Colors.black
                                : Colors.transparent,
                          ),
                        ),
                      ),
                      child: Text(
                        'Bánh ngọt',
                        style: TextStyle(
                          fontSize: 17,
                          color: selectedCategory == 'Bánh ngọt'
                              ? Colors.black
                              : Colors.grey,
                          fontWeight: selectedCategory == 'Bánh ngọt'
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ProductListScreen(category: selectedCategory),
          ],
        ),
      ),
    );
  }
}
