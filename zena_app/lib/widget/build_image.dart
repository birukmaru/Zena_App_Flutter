import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:zena_app/pages/article_view.dart';

class BuildImage extends StatelessWidget {
  const BuildImage({
    super.key,
    required this.context,
    required this.image,
    required this.index,
    required this.name,
    required this.url,
  });

  final BuildContext context;
  final String image;
  final int index;
  final String name;
  final String url;

  @override
  Widget build(BuildContext context) => Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ArticleView(blogUrl: url)));
        },
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                  imageUrl: image,
                  height: 250,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width),
            ),
            Container(
              height: 250,
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.only(top: 130),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(20))),
              child: Text(
                name,
                maxLines: 2,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ));
}
