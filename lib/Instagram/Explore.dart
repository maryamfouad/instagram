import 'package:flutter/material.dart';
import 'package:instagram/Instagram/data.dart';
import 'Home.dart';
import 'Profile.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int SelectedInsex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: SelectedInsex,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: GestureDetector(
              child: Icon(
                Icons.home_outlined,
                color: Colors.black54,
                size: 35,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.search,
                color: Colors.black54,
                size: 35,
              )),
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
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Profile(
                  counter: counter,
                  info: info,
                  url0: url0,

                )));
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                height: 37,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)),
              ),
              //Padding(padding: EdgeInsets.all( 5)),
              Container(
                margin: EdgeInsets.all(5),
                height: 500,
                width: 490,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 3,
                  scrollDirection: Axis.vertical,
                  children: [
                    grid(url),
                    grid("images/2a.jpg"),
                    grid("images/3a.jpg"),
                    grid("images/4a.jpg"),
                    grid("images/5a.jpg"),
                    grid("images/6.jpg"),
                    grid("images/7.jpg"),
                    grid("images/8.jpg"),
                    grid("images/9.jpg"),
                    grid("images/10.jpg"),
                    grid("images/11.jpg"),
                    grid("images/12.jpg"),
                    grid("images/13.jpg"),
                    grid("images/14.jpg"),
                    grid("images/15.jpg"),
                    grid("images/1a.jpg"),
                    grid("images/2a.jpg"),
                    grid("images/3a.jpg"),
                    grid("images/4a.jpg"),
                    grid("images/5a.jpg"),
                    grid("images/6.jpg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container grid(String url) {
    return Container(
      //margin: EdgeInsets.all(10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage("$url"))),
    );
  }
}
