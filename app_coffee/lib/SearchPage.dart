import 'package:app_coffee/movie_model.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // ignore: non_constant_identifier_names
  static List<MovieModel> main_movies_list = [
    MovieModel("Thanh Guom D423iet quyr", 2008, "assets/images/tea.png", 10),
    MovieModel("fd26547658sfsfs", 2008, "assets/images/coffee.png", 10),
    MovieModel("vxcvg34242f", 2008, "assets/images/tea.png", 10),
    MovieModel("yrrtyrrgdfsgr", 2008, "assets/images/coffee.png", 10),
    MovieModel("ewybfbfdd324f", 2008, "assets/images/tea.png", 10),
    MovieModel("ewybfbfdd324f", 2008, "assets/images/tea.png", 10),
    MovieModel("ewybfbfdd324f", 2008, "assets/images/tea.png", 10),
    MovieModel("ewybfbfdd324f", 2008, "assets/images/tea.png", 10),
    MovieModel("ewybfbfdd324f", 2008, "assets/images/tea.png", 10),
    MovieModel("ewybfbfdd324f", 2008, "assets/images/tea.png", 10),
  ];

  List<MovieModel> display_list = List.from(main_movies_list);

  void updateList(String value) {
    setState(() {
      display_list = main_movies_list
          .where((element) =>
              element.movie_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1f1545),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1f1545),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Seach for a movice",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xff302360),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "eg: The Dark Knight",
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.purple.shade900,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: display_list.length == 0
                  ? const Center(
                      child: Text(
                        'Now result found',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: const EdgeInsets.all(8.0),
                        title: Text(
                          display_list[index].movie_title!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          '${display_list[index].movie_release_year!}',
                          style: const TextStyle(color: Colors.white60),
                        ),
                        trailing: Text(
                          "${display_list[index].rating}",
                          style: const TextStyle(color: Colors.amber),
                        ),
                        leading:
                            Image.asset(display_list[index].movie_poster_url!),
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}

class MovieModel {
  String movie_title;
  int movie_release_year;
  String movie_poster_url;
  double rating;

  MovieModel(this.movie_title, this.movie_release_year, this.movie_poster_url,
      this.rating);
}
