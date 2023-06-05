import 'package:app_coffee/order/Order.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Map<String, dynamic>> cartItems = [];
  num totalPrice = 0; // Tổng tiền

  @override
  void initState() {
    super.initState();
    fetchCartItems();
  }

  void fetchCartItems() {
    FirebaseFirestore.instance
        .collection('carts')
        .get()
        .then((QuerySnapshot snapshot) {
      setState(() {
        cartItems = snapshot.docs.map((DocumentSnapshot document) {
          final data = document.data() as Map<String, dynamic>;
          final documentId = document.id;
          data['documentId'] =
              documentId; // Thêm trường documentId vào dữ liệu của sản phẩm
          data['quantity'] = 1; // Thêm trường quantity với giá trị ban đầu là 1
          return data;
        }).toList();
      });
      calculateTotalPrice(); // Tính tổng tiền sau khi cập nhật danh sách
    }).catchError((error) => print('Đã xảy ra lỗi: $error'));
  }

  void calculateTotalPrice() {
    totalPrice = 0;
    for (var item in cartItems) {
      final productPrice = item['productPrice'] as num;
      final quantity = item['quantity'] as int;
      totalPrice += productPrice * quantity;
    }
  }

  void removeItemFromCart(String documentId) {
    FirebaseFirestore.instance
        .collection('carts')
        .doc(documentId)
        .delete()
        .then((_) {
      print('Xóa sản phẩm thành công');
      fetchCartItems(); // Lấy lại danh sách sản phẩm sau khi xóa
    }).catchError((error) => print('Đã xảy ra lỗi: $error'));
  }

  void increaseQuantity(int index) {
    setState(() {
      cartItems[index]['quantity']++;
      calculateTotalPrice(); // Cập nhật tổng tiền sau khi tăng số lượng
      updateQuantityInFirestore(index, cartItems[index]['quantity']);
    });
  }

  void decreaseQuantity(int index) {
    setState(() {
      if (cartItems[index]['quantity'] > 1) {
        cartItems[index]['quantity']--;
        calculateTotalPrice(); // Cập nhật tổng tiền sau khi giảm số lượng
        updateQuantityInFirestore(index, cartItems[index]['quantity']);
      }
    });
  }

  void updateQuantityInFirestore(int index, int quantity) {
    final documentId = cartItems[index]['documentId'] as String;
    final cartItemRef =
        FirebaseFirestore.instance.collection('carts').doc(documentId);

    cartItemRef.update({
      'quantity': quantity,
    }).then((_) {
      print('Cập nhật số lượng thành công');
    }).catchError((error) {
      print('Đã xảy ra lỗi khi cập nhật số lượng: $error');
    });
  }

  void placeOrder() {
    final orderRef = FirebaseFirestore.instance.collection('orders').doc();
    final orderData = {
      'orderId': orderRef.id,
      'items': cartItems,
      'totalPrice': totalPrice,
      // Các thông tin khác của đơn hàng
    };

    orderRef.set(orderData).then((_) {
      clearCart();
      navigateToOrderScreen(orderRef.id);
    }).catchError((error) {
      print('Đã xảy ra lỗi khi lưu trữ đơn hàng: $error');
    });
  }

  void clearCart() {
    for (var item in cartItems) {
      final documentId = item['documentId'] as String;
      FirebaseFirestore.instance
          .collection('carts')
          .doc(documentId)
          .delete()
          .catchError((error) => print('Đã xảy ra lỗi: $error'));
    }
  }

  void navigateToOrderScreen(String orderId) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => OrderScreen(orderId: orderId),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giỏ hàng'),
      ),
      body: cartItems.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Không có đơn hàng',
                    style: TextStyle(fontSize: 18),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Quay lại sản phẩm'),
                  ),
                ],
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = cartItems[index];
                      final productName = item['productName'] as String;
                      final productImage = item['productImage'] as String;
                      final productPrice = item['productPrice'] as num;
                      final quantity = item['quantity'] as int;
                      final documentId =
                          cartItems[index]['documentId'] as String;

                      return ListTile(
                        leading: Image.network(
                          productImage,
                          width: 50,
                          height: 50,
                        ),
                        title: Text(productName),
                        subtitle: Text('$productPrice đ'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                decreaseQuantity(index);
                              },
                            ),
                            Text(quantity.toString()),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                increaseQuantity(index);
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                removeItemFromCart(documentId);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Tổng số tiền: $totalPrice đ',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              placeOrder();
                            },
                            child: const Text('Đặt hàng'),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
    );
  }
}
