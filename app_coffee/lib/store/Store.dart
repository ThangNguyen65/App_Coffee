import 'package:app_coffee/store/Describe_Store.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class StoreListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 238, 238, 1),
      appBar: AppBar(
        title: const Text('CỬA HÀNG'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(238, 238, 238, 1),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: TextField(
                // controller: _searchController,
                // onChanged: (value) {
                //   setState(() {}); // Trigger rebuild when search query changes
                // },
                decoration: InputDecoration(
                  hintText: 'Tìm kiếm',
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                ),
              ),
            ),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('store')
                  // .where('name', isGreaterThanOrEqualTo: _searchController.text)
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text('Đã xảy ra lỗi: ${snapshot.error}');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }

                final stores = snapshot.data!.docs;

                return ListView.builder(
                  itemCount: stores.length,
                  itemBuilder: (BuildContext context, int index) {
                    final store = stores[index];
                    final data = store.data() as Map<String, dynamic>;
                    final name = data['name'] as String?;
                    final image = data['image'] as String?;
                    final address = data['address'] as String?;
                    final detailedaddress = data['detailedaddress'] as String?;
                    final phone = data['phone'] as String?;
                    final time = data['time'] as String?;
                    final imageDetail_1 =
                        data['imagedescribesmall1'] as String?;
                    final imageDetail_2 =
                        data['imagedescribesmall2'] as String?;
                    final imageDetail_3 =
                        data['imagedescribesmall3'] as String?;
                    final imageDetail_4 =
                        data['imagedescribesmall4'] as String?;
                    final favorite = data['favorite'] as String?;

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StoreDetailScreen(
                                name: name ?? 'Unknown Name',
                                detailedaddress:
                                    detailedaddress ?? 'No Description',
                                image: image ?? 'Unknown Image',
                                phone: phone ?? 'Unknown Phone',
                                time: time ?? 'Unknown Time',
                                imageDetail_1:
                                    imageDetail_1 ?? 'Unknown Image Detail 1',
                                imageDetail_2:
                                    imageDetail_2 ?? 'Unknown Image Detail 2',
                                imageDetail_3:
                                    imageDetail_3 ?? 'Unknown Image Detail 3',
                                imageDetail_4:
                                    imageDetail_4 ?? 'Unknown Image Detail 4',
                                favorite: favorite ?? 'Unknown Favorite',
                                address: address ?? 'Unknown Address',
                              ),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                if (image != null)
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      image,
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          address ?? 'Unknown Address',
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          name ?? 'Unknown Name',
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                        const SizedBox(height: 15.0),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
