import 'package:flutter/material.dart';
import 'package:flutter_project/Search.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Cái tiệm cà phê'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Tìm kiếm',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const search()),
              );
            },
            child: const Text(
              'Tìm kiếm',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Text(
            'Các cửa hàng khác',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 8),
          SingleChildScrollView(
            child: Column(
              children: [
                //Hình 1
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/345854953_2388934077947447_1501733008119812596_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=asYGCN6NSOoAX9b9QMG&_nc_ht=scontent.fsgn2-4.fna&oh=00_AfD1yTsOy6ZfqDp5oNras7Xqsv54oynMhrZMmK4TkQ7EQg&oe=645EE5E2',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Cái tiệm Coffee',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              '293 Quang Trung',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                //Hình 2
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            'https://scontent.fsgn2-7.fna.fbcdn.net/v/t39.30808-6/345853331_252603270489570_8161136507712624912_n.jpg?stp=dst-jpg_p843x403&_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=r4S4f76d0tYAX_Yi5iE&_nc_ht=scontent.fsgn2-7.fna&oh=00_AfAeeHl_1oGK8W65Xj3XXbUzHfU7vGV1ysEyDF28armILw&oe=645F86C4',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Cái tiệm Coffee',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              '86 Cao Thắng',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                //Hình 3
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            'https://scontent.fsgn2-9.fna.fbcdn.net/v/t39.30808-6/345849908_1497913884282541_8041826185757033182_n.jpg?stp=dst-jpg_p843x403&_nc_cat=103&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=dhp7k-Vxb_8AX_r5z-W&_nc_ht=scontent.fsgn2-9.fna&oh=00_AfBhI8LNauGq_fX1f7rfIcXO120pwfQikb8H5JHOt7nEBg&oe=64602B8D',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Cái tiệm Coffee',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              '798 Sư Vạn Hạnh',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                //Hình 4
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            'https://scontent.fsgn2-3.fna.fbcdn.net/v/t39.30808-6/345849906_3360150110900124_3464286717668269529_n.jpg?stp=dst-jpg_p843x403&_nc_cat=107&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=JRPGlnVwBhwAX_Zh4zL&_nc_ht=scontent.fsgn2-3.fna&oh=00_AfASOQG2u5MXzmPMOQqDKlUDlzEkWT-_kxrJez-xgmGkJA&oe=645E9E18',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Cái tiệm Coffee',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              '95 Nguyễn Ảnh Thủ',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                //Hình 5
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            'https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/345887949_781416733372778_276633993374406029_n.jpg?stp=dst-jpg_p843x403&_nc_cat=110&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=bNl_gIh77XQAX9bVL1o&_nc_ht=scontent.fsgn2-6.fna&oh=00_AfAwvb832JNUmC0B1nLhNhvkWdRfw4K9_Oo3POQp8A0gYg&oe=645FDBD7',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Cái tiệm Coffee',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              '355 Thống Nhất',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                //Hình 6
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            'https://scontent.fsgn2-8.fna.fbcdn.net/v/t39.30808-6/345859333_793664551908308_7237021160634964347_n.jpg?stp=dst-jpg_p843x403&_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=F85rsi-X1NsAX-3p-pi&_nc_ht=scontent.fsgn2-8.fna&oh=00_AfDW4tFRnQODGHzFXhFl8da8uLG15soWsToaX1Dti6HmcQ&oe=64602291',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Cái tiệm Coffee',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              '27 Lê Lợi',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                //Hình 7
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            'https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/345842556_965082488031273_424465309960404367_n.jpg?stp=dst-jpg_p843x403&_nc_cat=106&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=GIJ_ifiiS8AAX_Z8Tdu&_nc_ht=scontent.fsgn2-5.fna&oh=00_AfB6OyWBlRbtjMBzpQn-GoMN_0i8HzUlj23S8uac6LNaqA&oe=64603D44',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Cái tiệm Coffee',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'Song Hành',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => searchTest()),
      //     );
      //   },
      //   child: Icon(Icons.search),
      // ),
    );
  }
}
