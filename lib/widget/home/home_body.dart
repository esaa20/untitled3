import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/Screens/detalid_screen.dart';
import 'package:untitled3/models/product.dart';
import 'package:untitled3/widget/home/product_card.dart';
import '../../constants.dart';
import 'package:flutter/src/widgets/navigator.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        SizedBox(height: kDefaultPadding / 2,),
        Expanded(child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 70.0) ,
              decoration: BoxDecoration(
                  color:  Colors.white,
                  borderRadius: BorderRadius.only( topLeft: Radius.circular(40) , topRight: Radius.circular(40))
              ),
            ),
            ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) => ProductCard(
                itemIndex: index,
                product: products[index],
                press: (){},
              ),
            )
          ],
        ))
      ],
    ));
  }
}



