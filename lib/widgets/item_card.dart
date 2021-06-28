import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:marketplace/models/Cart.dart';
import 'package:marketplace/models/Product.dart';
import 'package:marketplace/page/item_page.dart';
import 'package:provider/provider.dart';

class ItemCard extends StatelessWidget {
  const ItemCard ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    
    
    final product = Provider.of<Product>(context, listen:false );

    return Container(
      width: 150,
      padding: const EdgeInsets.all(2.0),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
       //color: Colors.grey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment:CrossAxisAlignment.stretch ,
        children: <Widget>[
          GestureDetector (
            onTap: ()
              {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ItemPage(productId: product.id))
                );
              },
             child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
               crossAxisAlignment:CrossAxisAlignment.center ,
            children: <Widget>[
              Container(
              height: 140,
             margin: EdgeInsets.all(10),
              child: Image(
                image:AssetImage(product.imgUrl) ,
                fit: BoxFit.scaleDown,
              ),
              ),

              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(bottom: 5.0),
                child:
                Text(
                  '${product.title}',
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold) ,
                 overflow: TextOverflow.fade,



                ),
              ),
            ],
          ),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text('${product.author}',
            style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),
                  overflow: TextOverflow.fade,
          ),
              ] ,
            ),
          ),

          Container(
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Text('${product.price} ₽', overflow: TextOverflow.fade,),

                IconButton(
                  icon: Icon(Icons.add_circle_outline,
                  color: Colors.black12,),
                onPressed: () {
                    Provider.of<CartDataProvider>(context,listen: false).
                    addItem(
                      productId: product.id,
                      price: product.price,
                      title: product.title,
                      imgUrl: product.imgUrl,

                    );
                },
                )
              ] ,
            ),
          )


        ],
      ) ,
    );
  }

}