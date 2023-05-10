import 'package:flutter/material.dart';
import 'package:flutter_project/search_model.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  static List<SearchModel> main_movies_list = [
    SearchModel("The Coffee House", "403 Hoa Hồng",
        "https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/340787390_952600215871277_7810028378813192680_n.jpg?stp=cp6_dst-jpg&_nc_cat=109&ccb=1-7&_nc_sid=730e14&_nc_ohc=dzF8l5VsAxwAX-SwJpM&_nc_ht=scontent.fsgn2-4.fna&oh=00_AfCL2QoqTgEYcmRXpmZASdxUl5kB2n71sQwzokr090RriA&oe=64600367"),
    SearchModel("Tcf", "403 Hoa Hồng",
        "https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/340832733_728035065687150_3219211057770440472_n.jpg?stp=cp6_dst-jpg&_nc_cat=109&ccb=1-7&_nc_sid=730e14&_nc_ohc=KKD6z6zkXRYAX9pbxTi&_nc_ht=scontent.fsgn2-4.fna&oh=00_AfAdPtcAM8Ww3tpJYtEcCn9vC4KKDATAm9OsXEO_nuyIgA&oe=6460311D"),
    SearchModel("The Coffee House", "403 Hoa Hồng",
        "https://scontent.fsgn2-7.fna.fbcdn.net/v/t39.30808-6/330302247_1419741508765479_30412133859838514_n.jpg?stp=cp6_dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=bAndQZR5ZrQAX_yPK03&_nc_ht=scontent.fsgn2-7.fna&oh=00_AfAgXPnwqAxdwVmKrzVtTA6FXNrmg3C5goGxOmMbfQlTDA&oe=645E75B6"),
    SearchModel("The Coffee House", "403 Hoa Hồng",
        "https://scontent.fsgn2-9.fna.fbcdn.net/v/t39.30808-6/317896627_670408958050654_7594859137630065004_n.jpg?stp=cp6_dst-jpg&_nc_cat=103&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=SNip1iWbFy4AX91WS9h&_nc_ht=scontent.fsgn2-9.fna&oh=00_AfDWpHW2NOmyjRJdlIjh127iiAcm7E_51OLL8zr8NMu7CQ&oe=646034AC"),
    SearchModel("The Coffee House", "403 Hoa Hồng",
        "https://scontent.fsgn2-9.fna.fbcdn.net/v/t39.30808-6/311794443_635594254865458_1485778195283588673_n.jpg?stp=cp6_dst-jpg&_nc_cat=105&ccb=1-7&_nc_sid=730e14&_nc_ohc=RnseB05sCa0AX9VSynO&_nc_oc=AQkXQeYb4ULrhZW9n8UhEsX8l99m-sSr5EB21UAYSGTac0UXlcmhH4poO3sEa9Xj4jg&_nc_ht=scontent.fsgn2-9.fna&oh=00_AfDUh8B5EVV_pCZD8UKazLwT7bTMUSASflGdsTqsNYF8CQ&oe=645F9CEF"),
    SearchModel("The Coffee House", "403 Hoa Hồng",
        "https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/326407577_2245111358993610_198181299272663620_n.jpg?stp=cp6_dst-jpg&_nc_cat=110&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=yPFtYz-VYdsAX-on_dS&_nc_ht=scontent.fsgn2-6.fna&oh=00_AfBl33A6XgH59F0z2xPphh0HSVhQjxOWVMkfRz8fKyEmNA&oe=645F8E11"),
    SearchModel("The Coffee House", "403 Hoa Hồng",
        "https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/334195468_197189382912851_873239106430277684_n.jpg?stp=cp6_dst-jpg&_nc_cat=106&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=_QB9CB2kitIAX8gQLEW&_nc_ht=scontent.fsgn2-5.fna&oh=00_AfD6JVbnNvS9ZWXLAI8vU70pPxcm10jJx542h4bma_FkJQ&oe=645F4083"),
    SearchModel("The Coffee House", "403 Hoa Hồng",
        "https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/329797127_446394237643214_2031171624891681143_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=a26aad&_nc_ohc=ybvPW5iIIBYAX9A5Goz&_nc_ht=scontent.fsgn2-5.fna&oh=00_AfCaMZSvX6fPqfnKDhchAd2vg8-MdazczmH_LPvG1Wj-mQ&oe=645F4A4B"),
    SearchModel("The Coffee House", "403 Hoa Hồng",
        "https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/329626155_525283669756676_1542425761549025898_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=a26aad&_nc_ohc=r-N8lw6kNi0AX9Ssvz_&_nc_ht=scontent.fsgn2-4.fna&oh=00_AfA89-AeYCOtuoEnH7w0sa8IMopMNbu-z7FB5-frG3F08w&oe=645EC9C7"),
    SearchModel("The Coffee House", "403 Hoa Hồng",
        "https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/334520862_1252409872046481_1232412974806794676_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=a26aad&_nc_ohc=KV_m8LKCCL0AX_1bn6H&_nc_ht=scontent.fsgn2-6.fna&oh=00_AfAo0kUJ6I1SgSKLkUYM-ika6i-DLOyw_i1IX3Jc6L-Obw&oe=645F2FFF"),
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
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Search Coffee",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none),
                hintText: "eg: The Dark Knight",
                suffixIcon: Icon(Icons.search),
                prefixIconColor: Colors.purple,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: display_list.length,
              itemBuilder: (context, index) => ListTile(
                contentPadding: EdgeInsets.all(8.0),
                title: Text(
                  display_list[index].search_title!,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '${display_list[index].search_address!}',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Image.network(display_list[index].search_url!),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
