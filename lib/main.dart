import 'package:flutter/material.dart';
import 'package:minmal_design/GridView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "TruenoExBd",
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: 20,
        ),
        title: Text("Explore",
            style: TextStyle(
              color: Colors.black,
            )),
        centerTitle: true,
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 20,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 15),
          Container(
            height: 80,
            margin: EdgeInsets.only(left: 20, right: 20),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text("Add to", style: TextStyle(color: Colors.black))
                  ],
                ),
                SizedBox(height: 15),
                buildStoryTile("assets/images/pic.jpg", "jazz", true),
                buildStoryTile("assets/images/pic1.jpg", "jazz", false),
                buildStoryTile("assets/images/pic2.jpg", "Chris", true),
                buildStoryTile("assets/images/pic3.jpg", "mocago", false),
                buildStoryTile("assets/images/pic4.jpg", "Jatu", true),
                buildStoryTile("assets/images/pic5.jpg", "Jati", false),
                buildStoryTile("assets/images/pic6.jpg", "Bye", true),
                buildStoryTile("assets/images/pic.jpg", "jazz", true),
                buildStoryTile("assets/images/pic1.jpg", "jazz", false),
                buildStoryTile("assets/images/pic2.jpg", "Chris", true),
                buildStoryTile("assets/images/pic3.jpg", "mocago", false),
                buildStoryTile("assets/images/pic4.jpg", "Jatu", true),
                buildStoryTile("assets/images/pic5.jpg", "Jati", false),
                buildStoryTile("assets/images/pic6.jpg", "Bye", true),
              ],
            ),
          ),
          SizedBox(height: 20),
          buildFirstRow("assets/images/pic.jpg"),
          buildsecondRow("assets/images/pic2.jpg"),
          buildThirdRow(),
        ],
      ),
    );
  }

  buildThirdRow() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 15),
          width: MediaQuery.of(context).size.width / 2.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("I like the way to place nitem to show more...",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(height: 6),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/pic4.jpg"),
                  ),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Alicia Scoot",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "5:30 PM",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10, top: 10),
          width: MediaQuery.of(context).size.width / 2.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("I like the way to place nitem to show more...",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(height: 6),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/pic5.jpg"),
                  ),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hennery Benjay",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "5:30 PM",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  buildsecondRow(imagepath) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 20, right: 20, top: 15),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/pic2.jpg",
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: MediaQuery.of(context).size.width / 2.5,
            child: Column(
              children: [
                Text("I like the way to place nitem to show more...",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/pic1.jpg"),
                    ),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 3),
                          child: Text(
                            "Mona Hall",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "10:53",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: AssetImage(imagepath))),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildFirstRow(String image) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 20, right: 10),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(image))),
                ),
                SizedBox(height: 10),
                Text("I like the way to place nitem to show more...",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/pic1.jpg"),
                    ),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 3),
                            child: Text("Mona Hall",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ))),
                        SizedBox(height: 3),
                        Text(
                          "10:53",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width / 2.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/pic1.jpg"))),
          ),
        ],
      ),
    );
  }

  buildStoryTile(String imagePath, name, bool available) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15),
          width: 60,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imagePath),
            ),
          ),
        ),
        SizedBox(height: 3),
        Row(
          children: [
            Text(name,
                style: TextStyle(
                  color: Colors.black,
                )),
            SizedBox(width: 2),
            available
                ? Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                  )
                : Container(),
          ],
        )
      ],
    );
  }
}
