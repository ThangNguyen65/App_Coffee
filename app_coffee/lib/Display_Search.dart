// import 'package:app_coffee/DescribeStore.dart';
// import 'package:app_coffee/Search.dart';
// import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter_project/Describe/Describe.dart';
// import 'package:flutter_project/Search.dart';
// import 'package:flutter_project/Test/describe_details_screen.dart';


// class MyHome extends StatefulWidget {
//   const MyHome({super.key});

//   @override
//   State<MyHome> createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   // final TextEditingController searchController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(238, 238, 238, 1),
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(238, 238, 238, 1),
//         elevation: 0.0,

//         // leading: Container(
//         //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
//         //   child: const Text(
//         //     'Cửa hàng ',
//         //     style: TextStyle(
//         //         fontSize: 22.0,
//         //         color: Colors.black,
//         //         fontWeight: FontWeight.bold),
//         //   ),
//         // ),
//       ),
//       body: ListView(
//         children: [
//           GestureDetector(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10.0),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Container(
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Tìm kiếm',
//                   suffixIcon: Icon(Icons.search),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                     borderSide: BorderSide.none,
//                   ),
//                   filled: true,
//                   fillColor: Colors.grey[300],
//                 ),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const search()),
//                     MaterialPageRoute(builder: (context) => search()),
//                   );
//                 },
//               ),
//             ),
//           ),
//           const SizedBox(height: 25.0),
//           SingleChildScrollView(
//             child: Column(
//               children: [
//                 //Hình 1
//                 GestureDetector(
//                   onTap: () {
//                     // Thực hiện chuyển đến trang khác khi người dùng nhấp vào
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => describe()),
//                     );
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: Colors.white,
//                     ),
//                     margin: const EdgeInsets.symmetric(horizontal: 16),
//                     child: Padding(
//                       padding: const EdgeInsets.all(15.0),
//                       child: Row(
//                         children: [
//                           ClipRRect(
//                             borderRadius: BorderRadius.circular(20),
//                             child: Image.network(
//                               'https://i.pinimg.com/564x/70/fd/63/70fd633ca9a25cb64b612eeb17fd3cc6.jpg',
//                               width: 100,
//                               height: 100,
//                             ),
//                           ),
//                           const SizedBox(width: 8),
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: const [
//                                 Text(
//                                   '293 Quang Trung',
//                                   style: TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 Text(
//                                   'Cái tiệm Coffee',
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 15.0),
//                 //Hình 2
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Colors.white,
//                   ),
//                   margin: const EdgeInsets.symmetric(horizontal: 16),
//                   child: Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Row(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: Image.network(
//                             'https://toplisthanoi.com/wp-content/uploads/2019/10/quan-cafe-dep-o-ha-noi-cau-giay-1..jpg',
//                             width: 100,
//                             height: 100,
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               Text(
//                                 '86 Cao Thắng',
//                                 style: TextStyle(
//                                     fontSize: 20, fontWeight: FontWeight.bold),
//                               ),
//                               Text(
//                                 'Cái tiệm Coffee',
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 15.0),
//                 //Hình 3
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Colors.white,
//                   ),
//                   margin: const EdgeInsets.symmetric(horizontal: 16),
//                   child: Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Row(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: Image.network(
//                             'https://danang.plus/wp-content/uploads/2022/10/cafe-son-tra-da-nang-4.jpg',
//                             width: 100,
//                             height: 100,
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               Text(
//                                 '798 Sư Vạn Hạnh',
//                                 style: TextStyle(
//                                     fontSize: 20, fontWeight: FontWeight.bold),
//                               ),
//                               Text(
//                                 'Cái tiệm Coffee',
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 15.0),
//                 //Hình 4
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Colors.white,
//                   ),
//                   margin: const EdgeInsets.symmetric(horizontal: 16),
//                   child: Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Row(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: Image.network(
//                             'https://kienviet.net/wp-content/uploads/2023/04/kienviet-tong-hop-10-quan-cafe-mo-ra-thien-nhien-40.jpg',
//                             width: 100,
//                             height: 100,
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               Text(
//                                 '95 Nguyễn Ảnh Thủ',
//                                 style: TextStyle(
//                                     fontSize: 20, fontWeight: FontWeight.bold),
//                               ),
//                               Text(
//                                 'Cái tiệm Coffee',
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 15.0),
//                 //Hình 5
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Colors.white,
//                   ),
//                   margin: const EdgeInsets.symmetric(horizontal: 16),
//                   child: Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Row(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: Image.network(
//                             'https://vietworld.world/Userfiles/Upload/images/281353874_1070179267039723_2436192077224018683_n.jpg',
//                             width: 100,
//                             height: 100,
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               Text(
//                                 '55 Thống Nhất',
//                                 style: TextStyle(
//                                     fontSize: 20, fontWeight: FontWeight.bold),
//                               ),
//                               Text(
//                                 'Cái tiệm Coffee',
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 15.0),
//                 //Hình 6
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Colors.white,
//                   ),
//                   margin: const EdgeInsets.symmetric(horizontal: 16),
//                   child: Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Row(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: Image.network(
//                             'https://noithatsaigonaz.vn/uploads/source/ca-phe/cf44.jpg',
//                             width: 100,
//                             height: 100,
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               Text(
//                                 '27 Lê Lợi',
//                                 style: TextStyle(
//                                     fontSize: 20, fontWeight: FontWeight.bold),
//                               ),
//                               Text(
//                                 'Cái tiệm Coffee',
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 15.0),
//                 //Hình 7
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Colors.white,
//                   ),
//                   margin: const EdgeInsets.symmetric(horizontal: 16),
//                   child: Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Row(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(15),
//                           child: Image.network(
//                             'https://vietworld.world/Userfiles/Upload/images/family-cafe-3.jpg',
//                             width: 100,
//                             height: 100,
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: const [
//                             Text(
//                               'Song Hành',
//                               style: TextStyle(
//                                   fontSize: 20, fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               'Cái tiệm Coffee',
//                               style: TextStyle(fontSize: 16),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 15.0),
//               ],
// =======
//           Expanded(
//             child: ListView.builder(
//               itemCount: describeList.length,
//               itemBuilder: (context, index) {
//                 final describe = describeList[index];

//                 return Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 8.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => DescribeDetailScreen(
//                             describe: describe,
//                           ),
//                         ),
//                       );
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         color: Colors.white,
//                       ),
//                       margin: const EdgeInsets.symmetric(horizontal: 16),
//                       child: Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: Row(
//                           children: [
//                             ClipRRect(
//                               borderRadius: BorderRadius.circular(20),
//                               child: Image.network(
//                                 describe.imageUrl,
//                                 width: 100,
//                                 height: 100,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             SizedBox(width: 8),
//                             Expanded(
//                               child: Padding(
//                                 padding: const EdgeInsets.all(15.0),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       describe.address,
//                                       style: TextStyle(
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     Text(
//                                       describe.name,
//                                       style: TextStyle(fontSize: 16),
//                                     ),
//                                     const SizedBox(height: 15.0),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               },
// >>>>>>> 810dfc4e9e7984d78523c14a0d8e9b9a838d5da8
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
