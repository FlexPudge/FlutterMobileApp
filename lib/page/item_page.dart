import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/page/cart_page.dart';
import 'package:provider/provider.dart';

import '../models/Cart.dart';
import '../models/Product.dart';


class ItemPage extends StatelessWidget {

  final String productId;

  const ItemPage({Key? key,required this.productId}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final data = context.watch<ProductDataProvider>()
        .getElementById(productId);

    return Scaffold(

     appBar: AppBar(
       backgroundColor: Colors.transparent,
       title: Text(data.title, style: GoogleFonts.marmelad(),),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Hero(
              tag: data.imgUrl,
              child: Container(
                margin: EdgeInsets.all(10),
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(data.imgUrl),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),

            Card(
              elevation: 5.0,
              margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: Container(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Text(data.title, style: TextStyle(fontSize: 26.0),),

                    Divider(),
                    Row(
                      children: <Widget>[
                        Text('Автор: ', style: TextStyle(fontSize: 14.0),),
                        Text('${data.author}', style: TextStyle(fontSize: 14.0),),
                      ],
                    ),


                    Divider(),
                    Container(
                      alignment: Alignment.centerLeft,
                      child:Text (
                        '${data.genres}',textAlign: TextAlign.justify, ),
                    ),



                    // Row(
                    //   children: <Widget>[
                    //     Text('Жанры: ', style: TextStyle(fontSize: 14.0),),
                    //     Text('Зарубежные приключения, \n '
                    //         'Книги о приключениях', style: TextStyle(fontSize: 14.0),),
                    //   ],
                    // ),




                    Divider(),
                    Text(data.description,textAlign: TextAlign.justify,),



                    SizedBox(
                      height: 20.0,
                    ),

                    //Provider.of<CartDataProvider>(context)
                    context.watch<CartDataProvider>()
                        .cartItems
                        .containsKey(productId)
                        ? Column(
                      children: <Widget>[
                        MaterialButton(
                            //color: Color(0xFFCCFF90),
                            child: Text('Перейти в корзину'),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CartPage(),
                              ));
                            }
                        ),
                        Text(
                          'Товар уже добавлен в корзину',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.deepOrange,
                          ),
                        )
                      ],
                    )
                        : MaterialButton(
                      //color: Colors.grey,
                      child: Text('Купить за '+'${data.price} ₽'),
                      onPressed: () {
                        context.read<CartDataProvider>().addItem(
                          productId: data.id,
                          imgUrl: data.imgUrl,
                          title: data.title,
                          price: data.price,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}