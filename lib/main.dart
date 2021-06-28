import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/models/Cart.dart';
import 'package:marketplace/models/Product.dart';
import 'package:marketplace/page/home_page.dart';
import 'package:provider/provider.dart';

import 'models/ProductForCatalog.dart';



void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super (key: key);


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
          ChangeNotifierProvider<ProductDataProvider>(
        create: (context) => ProductDataProvider(),
    ),

    ChangeNotifierProvider<CartDataProvider>(
    create: (context) => CartDataProvider(),
    ),

    ChangeNotifierProvider<ProductForLoadsDataProvider>(
        create: (context) => ProductForLoadsDataProvider (),
    ),

    ],
     child : MaterialApp(
        title: 'Marketplace',
        theme: ThemeData(
          accentColor: Colors.black54,
        backgroundColor: Colors.white,
        textTheme: GoogleFonts.marmeladTextTheme(
          Theme.of(context).textTheme,
        ),

      ),
      home: HomePage(),
    ),
    );

  }
}


