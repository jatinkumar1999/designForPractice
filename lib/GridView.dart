import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:minmal_design/listImages.dart';
import 'package:minmal_design/modals/user.dart';

class gridView extends StatefulWidget {
  gridView({Key key}) : super(key: key);

  @override
  _gridViewState createState() => _gridViewState();
}

class _gridViewState extends State<gridView> {
  List<User> userData = [];
  @override
  void initState() {
    userData = users;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          staggeredTileBuilder: (index) => index % 7 == 0
              ? StaggeredTile.count(2, 4)
              : StaggeredTile.count(2, 2),
          // StaggeredTile.count(2, index.isEven ? 2 : 1),
          itemCount: userData.length,
          itemBuilder: (context, index) {
            var number = userData[index];

            return buildTile(number);
          }),
    );
  }

  buildTile(User datas) {
    return Card(
        elevation: 2,
        margin: EdgeInsets.zero,
        color: Colors.grey[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(datas.imgPath))),
        ));
  }
}
