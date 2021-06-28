
import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class ProductForCatalog with ChangeNotifier {
  final String id;
  final String title;
  final String author;
  final String description;
  final String price;
  final String imgUrl;

  ProductForCatalog({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.price,
    required this.imgUrl,

  });
}

class ProductForLoadsDataProvider with ChangeNotifier
{
  List<ProductForCatalog> _items = [
    ProductForCatalog(
      id: '1',
      title: 'Нордвуд. Сумрачный город',
      author: 'Тодд Хелен',
      description: ' Нордвуд - сумрачный город, который никогда не отпустит тех, кто попал в его сети.Семь душ, плененных источником, скованных зеркальными знаками. Семь нитей, ведущих к свободе. Ведьмакам предстоит защищать туманные улицы Нордвуда ценой жизни.'
      'Впереди их ожидает тяжелое испытание: найти ключи к проклятому острову, уничтожить его и избавиться от древнего проклятия.',
      price: '250' ,
      imgUrl: 'imagesforcatalog/1.jpg' ,

    ),


    ProductForCatalog(
      id: '2',
      title: 'Титан',
      author: 'Теодор Драйзер',
      description: '"Титан" – вторая часть знаменитой "Трилогии желания" Теодора Драйзера, в основу которой положена история жизни американского миллионера Ч. Йеркса, сыгравшего значительную роль в разработке системы общественного транспорта в Чикаго и Лондонского метрополитена.'
       'Каупервуд, выйдя из филадельфийской тюрьмы и совершив ряд удачных спекуляций во время биржевой паники, позволившей стать ему миллионером, решает продолжить деятельность в Чикаго. Роман описывает события в жизни главного героя после филадельфийского периода ("Финансист") и предшествует заключительной части — роману "Стоик".',
      price: '150' ,
      imgUrl: 'imagesforcatalog/2.jpg' ,
    ),

    ProductForCatalog(
      id: '3',
      title: 'Западня',
      author: 'Эмиль Золя',
      description: '--- ',
      price: '170',
      imgUrl: 'imagesforcatalog/3.jpg' ,

    ),




    ProductForCatalog(
      id: '4',
      title: 'Крестный отец',
      author: 'Марио Пьюзо',
      description: 'Клан Корлеоне – могущественнейший во всей Америке. Для общества они торговцы маслом, а на деле сфера их влияния куда больше. Единственное, чем не хочет марать руки дон Корлеоне, – наркотики. Его отказ сильно задевает остальные семьи. Такое стареющему дону простить не могут. Начинается длительная война между кланами. Еще живо понятие родовой мести, поэтому остановить бойню можно лишь пойдя на рискованный шаг. До перемирия доживут не многие, но даже это не сможет гарантировать им возмездие от старых грехов.',
      price: '230',
      imgUrl: 'imagesforcatalog/4.jpg' ,
    ),


    ProductForCatalog(
      id: '5',
      title: '2020',
      author: 'Наталья Воробьёва',
      description: '---',
      price: '100',
      imgUrl: 'imagesforcatalog/5.jpg' ,
    ),
    ProductForCatalog(
      id: '6',
      title: 'Над пропастью во ржи',
      author: 'Джером Сэлинджер',
      description: '---',
      price: '425',
      imgUrl: 'imagesforcatalog/6.jpg' ,
    ),
    ProductForCatalog(
      id: '7',
      title: 'Атлант расправил плечи',
      author: 'Айн Рэнд',
      description: '---',
      price: '560',
      imgUrl: 'imagesforcatalog/7.jpg' ,
    ),
    ProductForCatalog(
      id: '8',
      title: 'Унесенные ветром',
      author: 'Маргарет Митчел',
      description: '---',
      price: '800',
      imgUrl: 'imagesforcatalog/8.jpg' ,
    ),

  ];

  UnmodifiableListView<ProductForCatalog> get items => UnmodifiableListView(_items);

  getElementById(String id ) => _items.singleWhere((value) => value.id == id);

}

