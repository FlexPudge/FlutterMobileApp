

import 'package:flutter/material.dart';
import 'package:marketplace/models/ProductForCatalog.dart';
import 'package:provider/provider.dart';

class CatalogListTile extends StatelessWidget{
  final imgUrl;
  final price;
  final title;

  CatalogListTile ({Key? key,this.imgUrl, this.title, this.price}) : super (key: key);

  @override
  Widget build(BuildContext context) {

   // final product = Provider.of<ProductForCatalog>(context, listen:false );

    return Container(
      padding: const EdgeInsets.all(5) ,
      child: ListTile(
        leading: Container (
          width: 60,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imgUrl),
              fit: BoxFit.cover,
            )
          ),
        ),

        title: Text(title),
        subtitle:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Text(price+' ₽'),

          ],
        ) ,
      ),

    );

  }




}