import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/constants.dart';
import 'package:untitled3/models/product.dart';

class DetailsBody extends StatelessWidget {
  final Product product2;
  const DetailsBody({Key? key , required this.product2}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
          height: 450,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            )
          ),
           child: Column(
             children: [
               Container(
                 width: double.infinity,
                 child: Column(
                   children: [
                     Center(
                       child: Container(
                         height: 300,
                           color: Colors.white,
                           child: Padding(
                             padding: const EdgeInsets.all(10.0),
                             child: Image.network(product2.image , fit: BoxFit.cover,),
                           ),
                       ),
                     ) ,
                     //Name
                     Container(
                       alignment: Alignment.centerLeft,
                       padding: EdgeInsets.only(left: 12),
                       margin: EdgeInsets.symmetric( vertical: 20),
                       child: Text(product2.title , style: TextStyle(fontSize: 25),),
                      // color: Colors.grey,
                     ),
                     //Pris
                     Container(
                       alignment: Alignment.centerLeft,
                       margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 0),
                       //color: Colors.deepPurple,
                       //alignment: Alignment.bottomLeft,
                       child: Text('${product2.price} \$' , style: TextStyle(fontSize: 25.0 , color: Colors.orange),),
                     )
                   ],
                 ) ,
               ),

             ],
           ),
        ),
        //discirubtion
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.symmetric(horizontal: 10),
         // color: Colors.white,
          child: Text(product2.descripition , style: TextStyle(fontSize: 16 , color: Colors.white),),
        )
      ],
    );
  }
}
