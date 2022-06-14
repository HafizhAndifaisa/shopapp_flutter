import 'package:flutter/material.dart';
import 'constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbarbuild(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hi, Hafizh Andifaisa!",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 32,
                    ),
                  ),
                  Icon(
                    Icons.notifications_active,
                    size: 32,
                    color: textColorSmall,
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.only(left: 16),
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                  color: textColorSmall,
                ),
              ),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: textColorSmall.withOpacity(0.5),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  suffixIconColor: textColorSmall,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: NetworkImage(
                            "https://picsum.photos/id/1020/4288/2848"),
                        opacity: 0.3,
                      ),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 1, color: Colors.black12),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Promo Today!",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "25% on Adventure Item!",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today's Item",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "see more",
                    style: TextStyle(
                      color: textColorSmall,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: size.width * 4 / 10,
                    margin: EdgeInsets.only(left: 20, right: 16),
                    child: Column(
                      children: [
                        Image.network("https://picsum.photos/id/1020/4288/2848"),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Macbook",
                                style: TextStyle(
                                    color: textColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Text(
                                "USD 200",
                                style: TextStyle(
                                  color: anotherColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                    ),
                  ),
                  Container(
                    width: size.width * 4 / 10,
                    margin: EdgeInsets.only(left: 20, right: 16),
                    child: Column(
                      children: [
                        Image.network("https://picsum.photos/id/0/5616/3744"),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Macbook",
                                style: TextStyle(
                                    color: textColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Text(
                                "USD 200",
                                style: TextStyle(
                                  color: anotherColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                    ),
                  ),
                  Container(
                    width: size.width * 4 / 10,
                    margin: EdgeInsets.only(left: 20, right: 16),
                    child: Column(
                      children: [
                        Image.network("https://picsum.photos/id/0/5616/3744"),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Macbook",
                                style: TextStyle(
                                    color: textColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Text(
                                "USD 200",
                                style: TextStyle(
                                  color: anotherColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Item",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "see more",
                    style: TextStyle(
                      color: textColorSmall,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appbarbuild() {
    return AppBar(
      leading: Icon(Icons.menu, color: textColor),
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }
}
