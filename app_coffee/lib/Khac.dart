import 'package:app_coffee/editProfile.dart';
import 'package:app_coffee/login_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Khac extends StatefulWidget {
  const Khac({super.key});

  @override
  State<Khac> createState() => _KhacState();
}

class _KhacState extends State<Khac> {
  final user = FirebaseAuth.instance.currentUser!;
  final Stream<QuerySnapshot> users = FirebaseFirestore.instance
      .collection('users')
      .orderBy('createdAt', descending: true)
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(158, 2, 93, 138),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //đọc dữ liệu từ users
                  Container(
                    height: 90,
                    child: StreamBuilder<QuerySnapshot>(
                      stream: users,
                      builder: (BuildContext context,
                          AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return Text('Error');
                        }
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Text('Loading...');
                        }
                        final data = snapshot.requireData;
                        if (data.docs.isEmpty) {
                          return Text('No data available');
                        }
                        final userData = data.docs.first;

                        return ListTile(
                          leading: Icon(
                            Icons.person,
                            size: 80,
                          ),
                          title: Text('My name ${userData['last name']}'),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.grey[100],
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Tài khoản",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // StreamBuilder<QuerySnapshot>(
                    //   stream: users,
                    //   builder: (BuildContext context,
                    //       AsyncSnapshot<QuerySnapshot> snapshot) {
                    //     if (snapshot.hasError) {
                    //       return Text('Error');
                    //     }
                    //     if (snapshot.connectionState ==
                    //         ConnectionState.waiting) {
                    //       return Text('Loading...');
                    //     }
                    //     final data = snapshot.requireData;
                    //     if (data.docs.isEmpty) {
                    //       return Text('No data available');
                    //     }
                    //     final userData = data.docs.first;

                    //     // Sử dụng dữ liệu từ profileData để hiển thị trong widget của bạn
                    //     return GestureDetector(
                    //       onTap: () {
                    //         Get.to(editProfile());
                    //       },
                    //       child: Container(
                    //         padding: const EdgeInsets.all(16),
                    //         decoration: BoxDecoration(
                    //           color: Colors.white,
                    //           borderRadius: BorderRadius.circular(16),
                    //         ),
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Row(
                    //               children: [
                    //                 const Icon(Icons.account_box_rounded),
                    //                 const SizedBox(width: 12),
                    //                 Column(
                    //                   crossAxisAlignment:
                    //                       CrossAxisAlignment.start,
                    //                   children: [
                    //                     Text(
                    //                       'Hồ sơ',
                    //                       style: TextStyle(
                    //                         fontWeight: FontWeight.bold,
                    //                         fontSize: 16,
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       'Tên: ${userData['last name']}',
                    //                       style: TextStyle(
                    //                         fontSize: 14,
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ],
                    //             ),
                    //             const Icon(Icons.arrow_forward_ios_rounded),
                    //           ],
                    //         ),
                    //       ),
                    //     );
                    //   },
                    // ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            const Icon(Icons.account_box_rounded),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => EditProfile());
                                  },
                                  child: const Text(
                                    "Hồ sơ ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                          const Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            const Icon(Icons.settings),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // Get.to(() => editProfile());
                                  },
                                  child: const Text(
                                    "Cài đặt",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                          const Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            const Icon(Icons.settings),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    FirebaseAuth.instance.signOut();
                                  },
                                  child: const Text(
                                    'Đăng xuất',
                                    style: TextStyle(
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                          const Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
