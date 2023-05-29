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
//                     MaterialPageRoute(builder: (context) => search()),
//                   );
//                 },
//               ),
//             ),
//           ),
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
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
