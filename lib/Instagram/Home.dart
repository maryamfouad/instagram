import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Instagram/Explore.dart';
import 'package:instagram/Instagram/Profile.dart';
import 'package:instagram/Instagram/data.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int SelectedInsex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.3,
          actions: [
            Icon(
              Icons.add_box_outlined,
              color: Colors.black54,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Icon(
              Icons.messenger_outline,
              color: Colors.black54,
            )
          ],
          title: Text(
            "Instagram",
            style: TextStyle(
                color: Colors.black54,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white.withOpacity(0.9),
          currentIndex: SelectedInsex,
          items: [
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black54,
                size: 35,
              ),
            ),
            BottomNavigationBarItem(
                label: "",
                icon: GestureDetector(
                    child: Icon(
                      Icons.search,
                      color: Colors.black54,
                      size: 35,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Explore()));
                    })),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.ondemand_video_sharp,
                  color: Colors.black54,
                  size: 35,
                )),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.black54,
                  size: 35,
                )),
            BottomNavigationBarItem(
                label: "",
                icon: GestureDetector(
                    child: Icon(
                      Icons.person,
                      color: Colors.black54,
                      size: 35,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Profile(
                            counter: counter,
                            info: info,
                            url0: url0,
                          )));
                    })),
          ],
        ),
        body: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                Container(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      insta(
                          "https://cdn1.iconfinder.com/data/icons/avatars-1-5/136/87-512.png",
                          "$userName"),
                      insta(
                          "https://cdn-icons-png.flaticon.com/512/219/219969.png",
                          "5p_g"),
                      insta(
                          "https://cdn-icons-png.flaticon.com/512/219/219983.png",
                          "ssd_0"),
                      insta(
                          "https://cdn4.iconfinder.com/data/icons/professions-2-2/151/87-512.png",
                          "oh6_j"),
                      insta(
                          "https://cdn1.iconfinder.com/data/icons/avatars-1-5/136/87-512.png",
                          "23_m"),
                      insta(
                          "https://cdn-icons-png.flaticon.com/512/219/219969.png",
                          "5p_g"),
                      insta(
                          "https://cdn-icons-png.flaticon.com/512/219/219983.png",
                          "ssd_0"),
                      insta(
                          "https://cdn4.iconfinder.com/data/icons/professions-2-2/151/87-512.png",
                          "oh6_j"),
                      insta(
                          "https://cdn1.iconfinder.com/data/icons/avatars-1-5/136/87-512.png",
                          "23_m"),
                      insta(
                          "https://cdn-icons-png.flaticon.com/512/219/219969.png",
                          "5p_g"),
                      insta(
                          "https://cdn-icons-png.flaticon.com/512/219/219983.png",
                          "ssd_0"),
                      insta(
                          "https://cdn4.iconfinder.com/data/icons/professions-2-2/151/87-512.png",
                          "oh6_j"),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(15)),
                Container(
                  width: 500,
                  height: 500,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      post("images/1.jpg"),
                      post("images/2.jpg"),
                      post("images/3.jpg"),
                      post("images/4.jpg"),
                      post("images/5.jpg"),
                      post("images/maryam.jpg"),
                      post("images/1.jpg"),
                      post("images/2.jpg"),
                      post("images/3.jpg"),
                      post("images/4.jpg"),
                      post("images/5.jpg"),
                      post("images/maryam.jpg"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Column insta(String url, String userName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(4),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                  image: NetworkImage("$url"), fit: BoxFit.cover)),
        ),
        Padding(padding: EdgeInsets.only(bottom: 2)),
        Text("$userName")
      ],
    );
  }

  Container post(String url) {
    return Container(
      width: 200,
      //height: 500,
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "$url",
            height: 300,
            width: 300,
          ),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.black54,
                    ),
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Icon(
                      Icons.mode_comment_outlined,
                      color: Colors.black54,
                    ),
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Icon(
                      Icons.send,
                      color: Colors.black54,
                    ),
                  ],
                ),
                Icon(
                  Icons.save_alt_rounded,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
