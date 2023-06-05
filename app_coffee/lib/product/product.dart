import 'package:app_coffee/product/ProductDetail.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  final String category;

  ProductListScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('products ')
          .where('category', isEqualTo: category)
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Đã xảy ra lỗi: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        return ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            final data = document.data() as Map<String, dynamic>;
            final productName = data['name'] as String;
            final productImage = data['image'] as String;
            final productPrice = data['price'] as num;
            final productDescription = data['description'] as String;
            return GestureDetector(
              onTap: () {
                showProductDetail(
                  context,
                  productName,
                  productImage,
                  productPrice,
                  productDescription,
                );
              },
              child: Container(
                padding: const EdgeInsets.only(top: 24, bottom: 10),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Color.fromARGB(255, 190, 188, 188), width: 1),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      productImage,
                      width: 130,
                      height: 130,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productName,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${productPrice} đ', // Format the price
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.shopping_cart),
                      onPressed: () {
                        addToCart(
                          context,
                          productName,
                          productImage,
                          productPrice,
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }

  void addToCart(
    BuildContext context,
    String productName,
    String productImage,
    num productPrice,
  ) {
    final cartRef = FirebaseFirestore.instance.collection('carts');
    final newCartItem = {
      'productName': productName,
      'productImage': productImage,
      'productPrice': productPrice,
    };

    final nonNullCartItem = {
      'productName': newCartItem['productName'] as String?,
      'productImage': newCartItem['productImage'] as String?,
      'productPrice': newCartItem['productPrice'] as num?,
    };

    if (nonNullCartItem['productName'] != null &&
        nonNullCartItem['productImage'] != null &&
        nonNullCartItem['productPrice'] != null) {
      final Map<String, dynamic> cartItemData = {
        'productName': nonNullCartItem['productName']!,
        'productImage': nonNullCartItem['productImage']!,
        'productPrice': nonNullCartItem['productPrice']!,
      };

      cartRef.add(cartItemData).then((value) {
        final snackBar = SnackBar(
          content: Text('Đã thêm sản phẩm vào giỏ hàng'),
          duration: Duration(seconds: 2),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }).catchError((error) => print('Đã xảy ra lỗi: $error'));
    } else {
      print('Giá trị null không thể thêm vào giỏ hàng');
    }
  }

  void showProductDetail(
    BuildContext context,
    String productName,
    String productImage,
    num productPrice,
    String productDescription,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailScreen(
          productName: productName,
          productImage: productImage,
          productPrice: productPrice,
          productDescription: productDescription,
        ),
      ),
    );
  }
}
