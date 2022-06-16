import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Container(
                      height: size.height * 3 / 10,
                      color: anotherColor,
                    ),
                    Container(
                      color: Colors.white,
                      height: size.height * 1 / 9,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 47,
                            backgroundColor: Colors.black,
                            foregroundImage: NetworkImage(
                                "https://picsum.photos/id/0/5616/3744"),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "M. Hafizh Andifaisa",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    children: [
                      PaddingButtonUserPage(Icons.person, "Edit Profile"),
                      PaddingButtonUserPage(
                          Icons.insert_drive_file, "My Orders"),
                      PaddingButtonUserPage(Icons.favorite, "My Wishlist"),
                      PaddingButtonUserPage(Icons.payment, "Payment Method"),
                      PaddingButtonUserPage(Icons.lock, "Change Password"),
                      PaddingButtonUserPage(
                          Icons.headphones, "Customer Support"),
                      PaddingButtonUserPage(Icons.logout, "Logout"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PaddingButtonUserPage extends StatelessWidget {
  PaddingButtonUserPage(this.iconuserpage, this.textlabel);

  String textlabel;
  IconData iconuserpage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Icon(
            iconuserpage,
            size: 24.0,
          ),
        ),
        label: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            textlabel,
            style: TextStyle(fontSize: 20),
          ),
        ),
        style: OutlinedButton.styleFrom(
          minimumSize: Size.fromHeight(48),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(16),
          primary: Colors.black,
        ),
      ),
    );
  }
}
