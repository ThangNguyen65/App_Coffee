// import 'package:app_coffee/cart/cart.dart';
// import 'package:app_coffee/product/product.dart';
// import 'package:flutter/material.dart';
// import 'package:expandable_text/expandable_text.dart';

// class ProductDetail extends StatefulWidget {
//   final Product product;

//   const ProductDetail({Key? key, required this.product}) : super(key: key);

//   @override
//   _ProductDetailState createState() => _ProductDetailState();
// }

// class _ProductDetailState extends State<ProductDetail> {
//   String selectedSize = '';
//   int quantity = 1;
//   Color minusIconColor = Colors.grey;
//   int cartItemCount = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.product.name),
//         centerTitle: true,
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Container(
//           padding: const EdgeInsets.only(right: 20, left: 20),
//           child: Row(
//             children: [
//               Container(
//                 width: 30,
//                 height: 30,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey),
//                   shape: BoxShape.circle,
//                 ),
//                 child: IconButton(
//                   padding: EdgeInsets.zero,
//                   onPressed: () {
//                     setState(() {
//                       if (quantity > 1) {
//                         quantity--;
//                         if (quantity == 1) {
//                           minusIconColor = Colors.grey;
//                         }
//                       }
//                     });
//                   },
//                   iconSize: 18,
//                   icon: Icon(
//                     Icons.remove,
//                     color: minusIconColor,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: Text(
//                   '$quantity',
//                   style: const TextStyle(
//                     fontSize: 20,
//                   ),
//                 ),
//               ),
//               Container(
//                 width: 30,
//                 height: 30,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey),
//                   shape: BoxShape.circle,
//                 ),
//                 child: IconButton(
//                   padding: EdgeInsets.zero,
//                   onPressed: () {
//                     setState(() {
//                       quantity++;
//                       if (quantity > 1) {
//                         minusIconColor = Colors.blue;
//                       }
//                     });
//                   },
//                   iconSize: 18,
//                   icon: const Icon(
//                     Icons.add,
//                     color: Colors.blue,
//                   ),
//                 ),
//               ),
//               const Spacer(),
//               Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Chuyển đến trang sản phẩm và hiển thị số lượng sản phẩm trong giỏ hàng
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => CartPage()),
//                     ).then((value) {
//                       if (value != null && value is int) {
//                         setState(() {
//                           cartItemCount = value;
//                         });
//                       }
//                     });
//                   },
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     primary: Colors.blue,
//                   ),
//                   child: Row(
//                     children: [
//                       const Text(
//                         'Thêm',
//                         style: TextStyle(
//                           fontSize: 20,
//                           color: Colors.white,
//                         ),
//                       ),
//                       const SizedBox(width: 5),
//                       Text(
//                         '${widget.product.price.toStringAsFixed(2)}\đ',
//                         style: const TextStyle(
//                           fontSize: 20,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.network(
//               widget.product.imageUrl,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     widget.product.name,
//                     style: const TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     '${widget.product.price.toStringAsFixed(2)}\đ',
//                     style: const TextStyle(
//                       fontSize: 20,
//                       color: Color.fromARGB(255, 141, 141, 141),
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   ExpandableText(
//                     widget.product.discribe,
//                     expandText: 'Xem thêm',
//                     collapseText: 'Rút gọn',
//                     linkColor: Colors.blue,
//                     maxLines: 3,
//                     style: const TextStyle(fontSize: 16),
//                   ),
//                   const SizedBox(height: 8),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         'Size',
//                         style: TextStyle(
//                           fontSize: 22,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const Text(
//                         'Chọn 1 loại size',
//                         style: TextStyle(fontSize: 16),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Column(
//                         children: [
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: GestureDetector(
//                                   onTap: () {
//                                     setState(() {
//                                       selectedSize = 'Lớn';
//                                     });
//                                   },
//                                   child: Container(
//                                     width: 60,
//                                     height: 60,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.rectangle,
//                                       borderRadius: BorderRadius.circular(15),
//                                       border: Border.all(
//                                         color: selectedSize == 'Lớn'
//                                             ? Colors.blue
//                                             : Colors.grey,
//                                       ),
//                                       color: selectedSize == 'Lớn'
//                                           ? Colors.blue
//                                           : Colors.white,
//                                     ),
//                                     padding: const EdgeInsets.all(15),
//                                     child: Center(
//                                       child: Text(
//                                         'Lớn',
//                                         style: TextStyle(
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.bold,
//                                           color: selectedSize == 'Lớn'
//                                               ? Colors.white
//                                               : Colors.black,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                 child: GestureDetector(
//                                   onTap: () {
//                                     setState(() {
//                                       selectedSize = 'Vừa';
//                                     });
//                                   },
//                                   child: Container(
//                                     width: 60,
//                                     height: 60,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.rectangle,
//                                       borderRadius: BorderRadius.circular(15),
//                                       border: Border.all(
//                                         color: selectedSize == 'Vừa'
//                                             ? Colors.blue
//                                             : Colors.grey,
//                                       ),
//                                       color: selectedSize == 'Vừa'
//                                           ? Colors.blue
//                                           : Colors.white,
//                                     ),
//                                     padding: const EdgeInsets.all(20),
//                                     child: Center(
//                                       child: Text(
//                                         'Vừa',
//                                         style: TextStyle(
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.bold,
//                                           color: selectedSize == 'Vừa'
//                                               ? Colors.white
//                                               : Colors.black,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                 child: GestureDetector(
//                                   onTap: () {
//                                     setState(() {
//                                       selectedSize = 'Nhỏ';
//                                     });
//                                   },
//                                   child: Container(
//                                     width: 60,
//                                     height: 60,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.rectangle,
//                                       borderRadius: BorderRadius.circular(15),
//                                       border: Border.all(
//                                         color: selectedSize == 'Nhỏ'
//                                             ? Colors.blue
//                                             : Colors.grey,
//                                       ),
//                                       color: selectedSize == 'Nhỏ'
//                                           ? Colors.blue
//                                           : Colors.white,
//                                     ),
//                                     padding: const EdgeInsets.all(20),
//                                     child: Center(
//                                       child: Text(
//                                         'Nhỏ',
//                                         style: TextStyle(
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.bold,
//                                           color: selectedSize == 'Nhỏ'
//                                               ? Colors.white
//                                               : Colors.black,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 38,
//                       ),
//                       Row(
//                         children: const [
//                           Icon(Icons.my_library_books_sharp),
//                           SizedBox(
//                             width: 6,
//                           ),
//                           Text(
//                             'Ghi Chú',
//                             style: TextStyle(
//                                 fontSize: 17, fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(
//                             width: 30,
//                           ),
//                           Text('Không bắc buộc')
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       const TextField(
//                         decoration: InputDecoration(
//                           hintText: 'Ghi Chú',
//                           border: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.grey),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 32,
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
