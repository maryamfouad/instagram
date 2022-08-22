import 'package:flutter/material.dart';
import 'package:instagram/Instagram/Explore.dart';
import 'package:instagram/Instagram/data.dart';

import 'Home.dart';

class Profile extends StatefulWidget {
  //لازم يكون تحت الكلاس الاول وليس الثاني
 final String info ;
   final int counter ;
   final String url0;
  Profile (
      {
        required this.info,
        required this.counter,
        required this.url0,
      }
      );

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int SelectedInsex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white.withOpacity(0.9),
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                }),
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
              icon: Icon(
                Icons.person,
                color: Colors.black54,
                size: 35,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 35,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/maryam.jpg"),
                              fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 7,
                                spreadRadius: 7,
                                color: Colors.grey.withOpacity(0.4))
                          ]),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 25)),
                    Text("Maryam"),
                    Text("Baghdad"),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  info(widget.info,widget.counter ),
                  info("Followers", 123),
                  info("Following", 1000)
                ],
              ),
              Padding(padding: EdgeInsets.all(15)),
              Container(
                //margin: EdgeInsets.all(15),
                height: 430,
                width: 430,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  scrollDirection: Axis.vertical,
                  children: [
                    grid(
                        "https://i.insider.com/5a25b4ef3339b009268b45d3?width=700"),
                    grid(
                        "https://images.unsplash.com/photo-1585409677983-0f6c41ca9c3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80"),
                    grid(
                        "https://media.istockphoto.com/photos/misty-blue-mountains-on-sunrise-picture-id613111906?k=20&m=613111906&s=612x612&w=0&h=V_zPi_4GBSDVWC1_LxDcw3lwVo1qkSoan2-7A2oiTO0="),
                    grid(
                        "https://images.pexels.com/photos/210243/pexels-photo-210243.jpeg?cs=srgb&dl=pexels-pixabay-210243.jpg&fm=jpg"),
                    grid(
                        "https://i.insider.com/5a25b4ef3339b009268b45d3?width=700"),
                    grid(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd-Lr8ywntKdw4B7Owk4ijo6rBl3VEvBgyVg&usqp=CAU"),
                    grid(
                        "https://i.insider.com/5a25b4ef3339b009268b45d3?width=700"),
                    grid(
                        "https://images.unsplash.com/photo-1585409677983-0f6c41ca9c3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80"),
                    grid(widget.url0 ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column info(String info, int counter) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("$counter"),
        Text(info),
      ],
    );
  }

  Container grid(String url) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage("$url"))),
    );
  }
}
