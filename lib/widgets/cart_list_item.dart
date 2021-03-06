import 'package:flutter/material.dart';
import 'package:marketplace/models/Cart.dart';
import 'package:marketplace/widgets/cart_item.dart';
import 'package:provider/provider.dart';



class CartItemList extends StatelessWidget{


  final  cartData;

    CartItemList ({Key? key, this.cartData}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount:cartData.cartItemsCount ,
          itemBuilder:(context, index) {
          return Dismissible(
              key: ValueKey(cartData.cartItems.keys.toList()[index]),
              background: Container(
                child: Icon (
                  Icons.delete,
                  color: Colors.black12,
                  size: 30,
                ),
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                padding: const EdgeInsets.only(right: 10) ,
              ) ,
              direction: DismissDirection.endToStart ,
              onDismissed: (direction) => Provider.of<CartDataProvider>(context, listen: false)
              .deleteItem(cartData.cartItems.keys.toList()[index]),
              child: CartItem(
                  cartData: cartData,
                  index: index, ),
          );
          } ,

      ),
    );

  }
}

