import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  static List<SearchModel> main_movies_list = [
    SearchModel("293 Quang Trung", "Cái tiệm Coffee",
        "https://www.vietnamembassy-arabsaudi.org/wp-content/uploads/2018/12/thinker-and-dreamer-coffee-1468217796-341239-1476858100.jpg"),
    SearchModel("86 Cao Thắng", "Cái tiệm Coffee",
        "https://toplisthanoi.com/wp-content/uploads/2019/10/quan-cafe-dep-o-ha-noi-cau-giay-1..jpg"),
    SearchModel("798 Sư Vạn Hạnh", "Cái tiệm Coffee",
        "https://danang.plus/wp-content/uploads/2022/10/cafe-son-tra-da-nang-4.jpg"),
    SearchModel("95 Nguyễn Ảnh Thủ", "Cái tiệm Coffee",
        "https://kienviet.net/wp-content/uploads/2023/04/kienviet-tong-hop-10-quan-cafe-mo-ra-thien-nhien-40.jpg"),
    SearchModel("55 Thống Nhất", "Cái tiệm Coffee",
        "https://vietworld.world/Userfiles/Upload/images/281353874_1070179267039723_2436192077224018683_n.jpg"),
    SearchModel("27 Lê Lợi", "Cái tiệm Coffee",
        "https://noithatsaigonaz.vn/uploads/source/ca-phe/cf44.jpg"),
    SearchModel("Song Hành", "403 Hoa Hồng",
        "https://vietworld.world/Userfiles/Upload/images/family-cafe-3.jpg"),
    // SearchModel("The Coffee House", "403 Hoa Hồng",
    //     "https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/329797127_446394237643214_2031171624891681143_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=a26aad&_nc_ohc=ybvPW5iIIBYAX9A5Goz&_nc_ht=scontent.fsgn2-5.fna&oh=00_AfCaMZSvX6fPqfnKDhchAd2vg8-MdazczmH_LPvG1Wj-mQ&oe=645F4A4B"),
    // SearchModel("The Coffee House", "403 Hoa Hồng",
    //     "https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/329626155_525283669756676_1542425761549025898_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=a26aad&_nc_ohc=r-N8lw6kNi0AX9Ssvz_&_nc_ht=scontent.fsgn2-4.fna&oh=00_AfA89-AeYCOtuoEnH7w0sa8IMopMNbu-z7FB5-frG3F08w&oe=645EC9C7"),
    // SearchModel("The Coffee House", "403 Hoa Hồng",
    //     "https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/334520862_1252409872046481_1232412974806794676_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=a26aad&_nc_ohc=KV_m8LKCCL0AX_1bn6H&_nc_ht=scontent.fsgn2-6.fna&oh=00_AfAo0kUJ6I1SgSKLkUYM-ika6i-DLOyw_i1IX3Jc6L-Obw&oe=645F2FFF"),
  ];
  List<SearchModel> display_list = List.from(main_movies_list);

  void updateList(String value) {
    setState(() {
      display_list = main_movies_list
          .where((element) =>
              element.search_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   "Search Coffee",
            //   style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 22.0,
            //       fontWeight: FontWeight.bold),
            // ),
            // SizedBox(
            //   height: 8.0,
            // ),
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none),
                hintText: "Tìm kiếm",
                suffixIcon: Icon(Icons.search),
                prefixIconColor: Colors.purple,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: display_list.length == 0
                  ? const Center(
                      child: Text(
                      'Không có cửa hàng',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ))
                  : ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            color: Colors.white,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      display_list[index].search_url!,
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        display_list[index].search_title!,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '${display_list[index].search_address!}',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchModel {
  String? search_title;
  String? search_address;
  String? search_url;

  SearchModel(this.search_title, this.search_address, this.search_url);
}
