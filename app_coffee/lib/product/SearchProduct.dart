import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductSearchScreen extends StatefulWidget {
  @override
  _ProductSearchScreenState createState() => _ProductSearchScreenState();
}

class _ProductSearchScreenState extends State<ProductSearchScreen> {
  late TextEditingController _searchController;
  List<Map<String, dynamic>> _searchResults = [];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void searchProduct(String searchQuery) {
    final String searchValue = searchQuery.toLowerCase();

    FirebaseFirestore.instance
        .collection('products ')
        .orderBy('name')
        .startAt([searchValue])
        .endAt([searchValue + '\uf8ff'])
        .get()
        .then((QuerySnapshot querySnapshot) {
          if (querySnapshot.docs.isNotEmpty) {
            // Tìm thấy kết quả
            List<Map<String, dynamic>> results = [];
            querySnapshot.docs.forEach((DocumentSnapshot document) {
              final data = document.data() as Map<String, dynamic>;
              final productName = data['name'] as String;
              final productImage = data['image'] as String;
              final productPrice = data['price'] as num;
              results.add({
                'productName': productName,
                'productImage': productImage,
                'productPrice': productPrice,
              });
            });
            setState(() {
              _searchResults = results;
            });
          } else {
            // Không tìm thấy kết quả
            setState(() {
              _searchResults = [];
            });
          }
        })
        .catchError((error) {
          // Xử lý lỗi
          print('Error searching for products: $error');
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    String searchQuery = _searchController.text.trim();
                    searchProduct(searchQuery);
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResults.length,
              itemBuilder: (BuildContext context, int index) {
                final result = _searchResults[index];
                final productName = result['productName'] as String;
                final productImage = result['productImage'] as String;
                final productPrice = result['productPrice'] as num;

                return ListTile(
                  leading: Image.network(productImage),
                  title: Text(productName),
                  subtitle: Text('Price: $productPrice'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
