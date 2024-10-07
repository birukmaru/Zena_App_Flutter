import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:zena_app/pages/article_view.dart';

class BlogTile extends StatelessWidget {
  String imageUrl, title, desc, url;
  BlogTile(
      {super.key,
      required this.desc,
      required this.imageUrl,
      required this.title,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (url.isNotEmpty) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ArticleView(blogUrl: url)),
          );
        } else {
          print("URL is empty. Cannot navigate.");
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Material(
          elevation: 3.0,
          borderRadius: BorderRadius.circular(10),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                )),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Text(
                        title,
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Text(
                        desc,
                        maxLines: 3,
                        style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
