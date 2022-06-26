import 'package:flutter/material.dart';
import 'package:shop_app/homepage.dart';

class BrowsePage extends StatelessWidget {
  BrowsePage(this.title);

  String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 24),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              ),
            ),
            SizedBox(height: 24),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 24,
                  childAspectRatio: 0.9,
                ),
                children: <Widget>[
                  ItemCard(
                    size: size.width,
                    linkphoto: "https://picsum.photos/id/1020/4288/2848",
                    titletext: "Kuma Photograph",
                    price: "USD 200",
                  ),
                  ItemCard(
                    size: size.width,
                    linkphoto: "https://picsum.photos/id/0/5616/3744",
                    titletext: "Laptop High Specs",
                    price: "USD 1400",
                  ),
                  ItemCard(
                    size: size.width,
                    linkphoto: "https://picsum.photos/id/1025/4951/3301",
                    titletext: "Pets Blanket",
                    price: "USD 12",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
