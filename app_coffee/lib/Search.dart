import 'package:app_coffee/Describe.dart';
import 'package:app_coffee/Describe_Store.dart';
import 'package:app_coffee/Display_Store.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  void navigateToProductDetail(Describe describe) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DescribeDetailScreen(
          describe: describe,
        ),
      ),
    );
  }

  @override
  _SearchScreenState createState() => _SearchScreenState();
  final BuildContext context;

  SearchScreen({required this.context});
}

class _SearchScreenState extends State<SearchScreen> {
  static List<SearchModel> search = [
    SearchModel(
      "293 Quang Trung",
      "Cái tiệm Coffee",
      "https://i.pinimg.com/564x/70/fd/63/70fd633ca9a25cb64b612eeb17fd3cc6.jpg",
      "Mô tả cửa hàng 293 Quang Trung",
    ),
    SearchModel(
      "86 Cao Thắng",
      "Cái tiệm Coffee",
      "https://toplisthanoi.com/wp-content/uploads/2019/10/quan-cafe-dep-o-ha-noi-cau-giay-1..jpg",
      "Mô tả cửa hàng 86 Cao Thắng",
    ),
    SearchModel(
      "798 Sư Vạn Hạnh",
      "Cái tiệm Coffee",
      "https://danang.plus/wp-content/uploads/2022/10/cafe-son-tra-da-nang-4.jpg",
      "Mô tả cửa hàng 798 Sư Vạn Hạnh",
    ),
    SearchModel(
      "95 Nguyễn Ảnh Thủ",
      "Cái tiệm Coffee",
      "https://kienviet.net/wp-content/uploads/2023/04/kienviet-tong-hop-10-quan-cafe-mo-ra-thien-nhien-40.jpg",
      "Mô tả cửa hàng 95 Nguyễn Ảnh Thủ",
    ),
    SearchModel(
      "55 Thống Nhất",
      "Cái tiệm Coffee",
      "https://vietworld.world/Userfiles/Upload/images/281353874_1070179267039723_2436192077224018683_n.jpg",
      "Mô tả cửa hàng 55 Thống Nhất",
    ),
    SearchModel(
      "27 Lê Lợi",
      "Cái tiệm Coffee",
      "https://noithatsaigonaz.vn/uploads/source/ca-phe/cf44.jpg",
      "Mô tả cửa hàng 27 Lê Lợi",
    ),
    SearchModel(
      "Song Hành",
      "403 Hoa Hồng",
      "https://vietworld.world/Userfiles/Upload/images/family-cafe-3.jpg",
      "Mô tả cửa hàng Song Hành",
    ),
  ];
  List<SearchModel> displayList = List.from(search);

  void updateList(String value) {
    setState(() {
      displayList = search
          .where((element) =>
              element.searchTitle.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

//Quay về
  void navigateToPreviousPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyHome(),
      ),
    );
  }

  void navigateToProductDetail(Describe describeList) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DescribeDetailScreen(describe: describeList),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          color: Colors.black,
          onPressed: navigateToPreviousPage,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: TextField(
                onChanged: (value) => updateList(value),
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
            child: displayList.length == 0
                ? const Center(
                    child: Text(
                      'Không có cửa hàng',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: displayList.length,
                    itemBuilder: (context, index) {
                      final describe = describeList[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            navigateToProductDetail(describeList[index]);
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
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      describe.imageUrl,
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            describe.address,
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            describe.name,
                                            style: TextStyle(fontSize: 16),
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
                  ),
          ),
        ],
      ),
    );
  }
}

class SearchModel {
  final String searchTitle;
  final String searchSubtitle;
  final String imageUrl;
  final String description;

  SearchModel(
    this.searchTitle,
    this.searchSubtitle,
    this.imageUrl,
    this.description,
  );
}
