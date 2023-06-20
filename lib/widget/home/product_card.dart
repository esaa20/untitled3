import 'package:flutter/material.dart';
import 'package:untitled3/Screens/detalid_screen.dart';
import 'package:untitled3/models/product.dart';
import '../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,required this.itemIndex, required this.product , required this.press
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function press ;

  @override
  Widget build(BuildContext context) {
    Size  size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding , vertical: kDefaultPadding / 2 ) ,
      height: 190.0,

      child: InkWell(
        onDoubleTap: press(),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(height: 166.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10) , color: Colors.white ,
                boxShadow:[BoxShadow(offset: Offset(0,15) , blurRadius: 25 , color: Colors.black54 ) ] , ),
            ),
            Positioned(
                right: 0.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 160.0,
                  width: 200.0,
                  child: Expanded(
                    child: Image.network(product.image ,
                      fit: BoxFit.cover,
                    ),
                  ),

                )),
            Positioned(
                bottom: 0.0,
                left: 0.0,
                child: SizedBox(
                  height: 136.0, width: size.width - 200,
                  child: Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding ),
                          child: Text(product.title),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/4 , vertical: kDefaultPadding / 2),
                          child: Text( product.subTitle , style: Theme.of(context).textTheme.caption,),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2 , vertical: kDefaultPadding / 2),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5 , vertical: kDefaultPadding / 5),
                            decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Text('Price : ${product.price}\$'),
                          ),
                        ),
                        Expanded(child: IconButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailsScreen(product1: product,)
                          ));
                        }, icon: Icon(Icons.add))),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}