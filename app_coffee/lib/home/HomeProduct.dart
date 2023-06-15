import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('home').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          List<Product> productList = [];

          snapshot.data!.docs.forEach((doc) {
            Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
            String? nameproduct = data['nameproduct'];
            String? nameproduct2 = data['nameproduct2'];
            String? nameproduct3 = data['nameproduct3'];
            String? nameproduct4 = data['nameproduct4'];
            String? nameproduct5 = data['nameproduct5'];
            String? nameproduct6 = data['nameproduct6'];
            String? imageUrl = data['imageUrl'];
            String? imageUrl2 = data['imageUrl2'];
            String? imageUrl3 = data['imageUrl3'];
            String? imageUrl4 = data['imageUrl4'];
            String? imageUrl5 = data['imageUrl5'];
            String? imageUrl6 = data['imageUrl6'];
            String? money = data['money'];
            String? money2 = data['money2'];
            String? money3 = data['money3'];
            String? money4 = data['money4'];
            String? money5 = data['money5'];
            String? money6 = data['money6'];

            Product product = Product(
              nameproduct: nameproduct ?? '',
              nameproduct2: nameproduct2 ?? '',
              nameproduct3: nameproduct3 ?? '',
              nameproduct4: nameproduct4 ?? '',
              nameproduct5: nameproduct5 ?? '',
              nameproduct6: nameproduct6 ?? '',
              imageUrl: imageUrl ?? '',
              imageUrl2: imageUrl2 ?? '',
              imageUrl3: imageUrl3 ?? '',
              imageUrl4: imageUrl4 ?? '',
              imageUrl5: imageUrl5 ?? '',
              imageUrl6: imageUrl6 ?? '',
              money: money ?? '',
              money2: money2 ?? '',
              money3: money3 ?? '',
              money4: money4 ?? '',
              money5: money5 ?? '',
              money6: money6 ?? '',
            );
            productList.add(product);
          });

          return PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: (context, index) {
              Product product = productList[index];

              return Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                product.imageUrl,
                                width: 150,
                                height: 150,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                product.nameproduct,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              product.money,
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.black),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 114, 74, 4),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 60, top: 10, right: 60, bottom: 12),
                                  child: Text(
                                    'Chọn',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                          ],
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                product.imageUrl2,
                                width: 150,
                                height: 150,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                product.nameproduct2,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              product.money2,
                              style: const TextStyle(fontSize: 15),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 114, 74, 4),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 60, top: 10, right: 60, bottom: 12),
                                  child: Text(
                                    'Chọn',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                          ],
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                product.imageUrl3,
                                width: 150,
                                height: 150,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                product.nameproduct3,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              product.money3,
                              style: const TextStyle(fontSize: 15),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 114, 74, 4),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 60, top: 10, right: 60, bottom: 12),
                                  child: Text(
                                    'Chọn',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                          ],
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                product.imageUrl4,
                                width: 150,
                                height: 150,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                product.nameproduct4,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              product.money4,
                              style: const TextStyle(fontSize: 15),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 114, 74, 4),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 60, top: 10, right: 60, bottom: 12),
                                  child: Text(
                                    'Chọn',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                          ],
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                product.imageUrl5,
                                width: 150,
                                height: 150,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                product.nameproduct5,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              product.money5,
                              style: const TextStyle(fontSize: 15),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 114, 74, 4),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 60, top: 10, right: 60, bottom: 12),
                                  child: Text(
                                    'Chọn',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                          ],
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                product.imageUrl6,
                                width: 150,
                                height: 150,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                product.nameproduct6,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              product.money6,
                              style: const TextStyle(fontSize: 15),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 114, 74, 4),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 60, top: 10, right: 60, bottom: 12),
                                  child: Text(
                                    'Chọn',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Product {
  final String nameproduct;
  final String nameproduct2;
  final String nameproduct3;
  final String nameproduct4;
  final String nameproduct5;
  final String nameproduct6;
  final String imageUrl;
  final String imageUrl2;
  final String imageUrl3;
  final String imageUrl4;
  final String imageUrl5;
  final String imageUrl6;
  final String money;
  final String money2;
  final String money3;
  final String money4;
  final String money5;
  final String money6;

  Product(
      {required this.nameproduct,
      required this.nameproduct2,
      required this.nameproduct3,
      required this.nameproduct4,
      required this.nameproduct5,
      required this.nameproduct6,
      required this.imageUrl,
      required this.imageUrl2,
      required this.imageUrl3,
      required this.imageUrl4,
      required this.imageUrl5,
      required this.imageUrl6,
      required this.money,
      required this.money2,
      required this.money3,
      required this.money4,
      required this.money5,
      required this.money6});
}
