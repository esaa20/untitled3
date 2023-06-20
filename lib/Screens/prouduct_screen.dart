import 'package:flutter/material.dart';
import 'package:untitled3/widget/home/home_body.dart';
class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[500] ,
      appBar: AppBar(
        backgroundColor: Colors.teal[500],
        elevation: 0,
        title: Text("Welcome To The Store"),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.menu))],
      ),
      body: HomeBody(),
    );
  }
}
