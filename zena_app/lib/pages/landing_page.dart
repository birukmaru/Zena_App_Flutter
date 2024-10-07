import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:zena_app/pages/home.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Column(
          children: [
            Expanded(
              child: Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://i.pinimg.com/564x/21/3f/90/213f904257295161cba4c450608b1329.jpg",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "News from around the\n        world for you",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height *
                      0.03, // Dynamic font size
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Best time to read, take your time to read\n          a little more of this world!",
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: MediaQuery.of(context).size.height *
                      0.02, // Dynamic font size
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Material(
                  borderRadius: BorderRadius.circular(30),
                  elevation: 3.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height *
                          0.025, // Dynamic padding
                    ),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.02), // Dynamic spacing
          ],
        ),
      ),
    );
  }
}
