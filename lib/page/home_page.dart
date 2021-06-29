import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/models/Product.dart';
import 'package:marketplace/models/ProductForCatalog.dart';
import 'package:marketplace/widgets/bottom_bar.dart';

import 'package:marketplace/widgets/catalog.dart';
import 'package:marketplace/widgets/item_card.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget{
  const HomePage ({Key? key}) : super (key: key);

  @override
  Widget build (BuildContext context){
    final productData = Provider.of<ProductDataProvider>(context);
    final productCatalog = Provider.of<ProductForLoadsDataProvider>(context);

    return Scaffold(
 
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            )
          ),
          child: ListView(

            padding: const EdgeInsets.all(10.0),
            children: <Widget>[
              Container(
                child: ListTile(
                  title: Text('Книги',
                  style : TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  subtitle: Text('Лучшие из лучших',
                    style : TextStyle(fontSize: 16),
                  ),
                 // trailing: Icon(Icons.panorama_horizontal),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: productData.items.length,
                    itemBuilder: (context, int  index) =>
                        ChangeNotifierProvider.value(
                            value: productData.items[index],
                          child: ItemCard(),
                        )
                ),
              ),
      Padding(padding: const EdgeInsets.all(10.0),
        child : Text ('Каталог товаров'),
      ),

      ...productCatalog.items.map((value) {
        return CatalogListTile( imgUrl:value.imgUrl, title: value.title, price: value.price,);
      }).toList(),


            ],

          ),
        ),


      ),
      bottomNavigationBar:BottomBar() ,
    );
  }
}

