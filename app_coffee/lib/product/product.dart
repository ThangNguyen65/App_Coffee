import 'package:flutter/material.dart';
import 'ProductDetail.dart';
import 'SearchProduct.dart';

class testProduct extends StatefulWidget {
  const testProduct({super.key});

  @override
  State<testProduct> createState() => _testProductState();
}

class Cart {
  static List<Product> cartItems = []; // Danh sách các sản phẩm trong giỏ hàng

  static int getCartItemCount() {
    return cartItems.length; // Trả về số lượng sản phẩm trong giỏ hàng
  }

  static void addToCart(Product product) {
    cartItems.add(product); // Thêm sản phẩm vào giỏ hàng
  }
}

class _testProductState extends State<testProduct> {
  void navigateToProductDetail(Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetail(product: product),
      ),
    );
  }

  // Danh sách các loại sản phẩm
  int hoveredCategoryIndex = -1; // Define the hoveredCategoryIndex variable
  List<Category> categories = [
    Category(
      name: 'ĐANG ĐƯỢC YÊU THÍCH',
      products: [
        Product(
            name: 'Phin Đen Đá',
            imageUrl: 'assets/images/tea.png',
            price: 1.99,
            discribe: ''),
        Product(
            name: 'Bạc Xỉu Đá',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Bạc Xỉu Nóng',
            imageUrl: 'assets/images/tea.png',
            price: 1.99,
            discribe: ''),
        Product(
            name: 'Phin Đen Nóng',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Phin Sữa Nóng',
            imageUrl: 'assets/images/tea.png',
            price: 1.99,
            discribe: ''),
      ],
    ),
    Category(
      name: 'THỨC UỐNG',
      products: [
        Product(
            name: 'Americano Nóng',
            imageUrl: 'assets/images/tea.png',
            price: 1.99,
            discribe: ''),
        Product(
            name: 'Caramel Macchiato Đá',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Cappuccino Đá',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Espresso',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Latte Nóng',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Mocha Nóng',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Cappuccino Nóng',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Latte Đá',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Mocha Đá',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Americano Đá',
            imageUrl: 'assets/images/tea.png',
            price: 1.99,
            discribe: ''),
        Product(
            name: 'Caramel Macchiato Nóng',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
      ],
    ),
    Category(
      name: 'CÀ PHÊ ĐÓNG GÓI',
      products: [
        Product(
            name: 'Trà Dưa Hấu Vải',
            imageUrl: 'assets/images/tea.png',
            price: 1.99,
            discribe: ''),
        Product(
            name: 'Trà Xanh Đậu Đỏ Nóng',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Trà Thạch Đào',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Trà Sen Vàng Nóng',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Trà Sen Vàng',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Trà Xanh Đậu Đỏ ',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Trà Thạch Đào Nóng',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Trà Thạch Đào',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Trà Thạch Vải',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Trà Sen Vàng Củ Năng Nóng',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Trà Thanh Đào Nóng',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'Trà Thạch Vải Nóng',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
      ],
    ),
    Category(
      name: 'THỨC ĂN',
      products: [
        Product(
            name: 'PhinDi Hạnh Nhân',
            imageUrl: 'assets/images/coffee.png',
            price: 3.99,
            discribe: ''),
        Product(
            name: 'PhinDi Choco',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
        Product(
            name: 'PhinDi Kem Sữa',
            imageUrl: 'assets/images/tea.png',
            price: 2.99,
            discribe: ''),
      ],
    ),
  ];
  // Chọn loại sản phẩm được chọn
  int selectedCategoryIndex = 0;
  // Khai báo biến cartItemCount trong widget state của trang sản phẩm (ProductPage)
  int cartItemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0), // Chiều cao của đường viền
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey, // Màu sắc của đường viền
                  width: 1.0, // Độ dày của đường viền
                ),
              ),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.blue),
        leading: const Icon(Icons.person, size: 35),
        title: const Center(
          child: Text('Thực Đơn'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              children: [
                InkWell(
                  child: const Icon(Icons.search, size: 35),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchProduct(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 14,
                ),
                Stack(
                  children: [
                    const Icon(
                      Icons.shopping_cart,
                      size: 35,
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          cartItemCount.toString(),
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 3,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      categories.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategoryIndex = index;
                          });
                        },
                        child: MouseRegion(
                          onHover: (event) {
                            setState(() {
                              // Thay đổi màu sắc của văn bản khi hover
                              hoveredCategoryIndex = index;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              // Đặt lại màu sắc của văn bản khi hết hover
                              hoveredCategoryIndex = -1;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                bottom: selectedCategoryIndex == index ? 2 : 0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: selectedCategoryIndex == index ? 2 : 0,
                                  color: selectedCategoryIndex == index
                                      ? Color.fromARGB(255, 138, 189, 230)
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 10, left: 10, top: 10, bottom: 10),
                              child: Text(
                                categories[index].name,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: hoveredCategoryIndex == index
                                      ? Color.fromARGB(255, 138, 189, 230)
                                      : Colors
                                          .black, // Thay đổi màu sắc của văn bản khi hover
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  child: Text(
                    categories[selectedCategoryIndex].name,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  padding: const EdgeInsets.only(left: 12),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: categories[selectedCategoryIndex].products.length,
              padding: const EdgeInsets.all(5),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        navigateToProductDetail(
                            categories[selectedCategoryIndex].products[index]);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Image.asset(
                                categories[selectedCategoryIndex]
                                    .products[index]
                                    .imageUrl,
                                width: 80,
                                height: 80,
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    categories[selectedCategoryIndex]
                                        .products[index]
                                        .name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width: 60, // Đặt chiều rộng tùy ý cho giá tiền
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\$${categories[selectedCategoryIndex].products[index].price}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[700],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                IconButton(
                                  icon:
                                      const Icon(Icons.shopping_cart_checkout),
                                  onPressed: () {
                                    // addToCart(
                                    //     product); // Thay `product` bằng sản phẩm bạn muốn thêm vào giỏ hàng
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Category {
  final String name;
  final List<Product> products;

  Category({required this.name, required this.products});
}

class Product {
  final String name;
  final String imageUrl;
  final double price;
  final String discribe;
  Product(
      {required this.name,
      required this.imageUrl,
      required this.price,
      required this.discribe});
}
