import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:untitled3/models/product.dart';
import 'package:untitled3/widget/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product1;
  const DetailsScreen({Key? key , required this.product1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[500],
      appBar: AppBar(
        backgroundColor: Colors.white,
       leading: IconButton(onPressed: (){
         Navigator.pop(context);
       } ,
         icon: Icon(Icons.arrow_back) , color: Colors.black,),
        title: Text('Back' , style: TextStyle(color: Colors.black),),
      ),
      body: DetailsBody(
        product2: product1,
      ),
    );
  }
}
