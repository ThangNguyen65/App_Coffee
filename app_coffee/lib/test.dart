import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PurchaseHistoryPage extends StatelessWidget {
  late Query<Map<String, dynamic>> cartsCollection;

  Future<void> initializeFirebase() async {
    await Firebase.initializeApp();
    cartsCollection = FirebaseFirestore.instance
        .collection('carts')
        .orderBy('quantity', descending: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lịch sử mua hàng'),
      ),
      body: FutureBuilder<void>(
        future: initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            stream: cartsCollection.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                return Text('No purchase history found.');
              }

              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  var cart = snapshot.data!.docs[index].data();
                  return ListTile(
                    leading: Image.network(cart['productImage']),
                    title: Text(cart['productName']),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price: ${cart['productPrice'].toString()}'),
                        Text('Quantity: ${cart['quantity'].toString()}'),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
