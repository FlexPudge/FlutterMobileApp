
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class Product with ChangeNotifier {
  final String id;
  final String title;
  final String author;
  final String genres;
  final String description;
  final num price;
  final String imgUrl;


  Product({
    required this.id,
    required this.title,
    required this.author,
    required this.genres,
    required this.description,
    required this.price,
    required this.imgUrl,


  });
}

class ProductDataProvider with ChangeNotifier
{
  List<Product> _items = [
    Product(
      id: '1',
      title: 'Приключения Тома Сойера',
      author: 'Марк Твен',
      genres: 'Приключения, Биография, Комедия, Трагедия',
      description: 'Рассказ Марка Твена о приключениях мальчика, который благодаря своей храбрости, задору и чистому сердцу стал символом целого поколения, давно превратился в образчик прекрасного слога и великолепной книги как для детей, так и для взрослых.',
      price: 250 ,
      imgUrl: 'image/1.jpg' ,

    ),


    Product(
        id: '2',
        title: 'Мертвые души',
        author: 'Николай Гоголь',
      genres: ' Классическая проза, Русская классика, Поэма',
        description: 'Сюжет книги основан на реальной истории, которую Гоголю подсказал Александр Сергеевич Пушкин. Главный герой книги — бывший коллежский советник Чичиков, выдает себя за помещика. Однажды он появляется в уездном городе N, чтобы осуществить на первый взгляд безумный проект: герой хочет купить у местных помещиков мертвых крестьян, которые теперь числятся только на бумаге. Чтобы исполнить этот план, он встречается с самыми разными персонажами, которые олицетворяют различные качества и пороки общества — удивительно, но спустя полтора века они сохраняют свою актуальность.',
        price: 150 ,
      imgUrl: 'image/2.jpg' ,
    ),



    Product(
        id: '3',
        title: 'Вишневый сад',
        author: 'Антон Чехов',
      genres: 'Литература 20 века, Пьесы и драматургия, Русская классика,Комедия',
        description: 'Персонажи «Вишневого сада» давно превратились в собирательные образы, будь то Лопахин, Раневская, Епиходов, Шарлотта или Яша. Примечательно, что чеховские образы-карикатуры остались актуальными и в наше время, и в строках «Вишневого сада» всегда можно найти параллели с современностью.',
        price: 170,
      imgUrl: 'image/3.jpg' ,

    ),




    Product(
        id: '4',
        title: '1984',
        author: 'Джордж Оруэлл',
      genres: 'Роман-антиутопия, Зарубежная фантастика, Историческая фантастика',
        description: 'Фантастическая антиутопия Оруэлла – это мир тотального контроля и страха, где люди живут ради войны, ради того, чтобы скрыть правду и воспитать настоящих патриотов. В жестоком тоталитарном государстве люди лишены гражданских прав и собственного мнения. Культ Большого Брата подразумевает жесткую социальную иерархию, где даже проявление любви считается мыслепреступлением. ',
        price: 230,
      imgUrl: 'image/4.jpg' ,
    ),


    Product(
        id: '5',
        title: 'Евгений Онегин',
        author: 'Александр Пушкин',
      genres: ' Русская классика, Стихи и поэзия',
        description: 'Роман в стихах «Евгений Онегин» А.С. Пушкин считал главным своим произведением, современники называли его «энциклопедией русской жизни». Литературное творение великого русского поэта проникнуто авторской мыслью, любовью и лиризмом. И не случайно автор на страницах романа высказал надежду, что «Евгений Онегин» останется в памяти потомков и тронет их сердца.',
        price: 100 ,
      imgUrl: 'image/5.jpg' ,
    ),

    Product(
        id: '6',
        title: 'Тихий Дон',
        author: 'Михаил Шолохов',
      genres: 'Литература 20 века, Русская классика, Советская литература',
        description: 'Роман-эпопея Михаила Шолохова «Тихий Дон» – одно из наиболее значительных, масштабных и талантливых произведений русскоязычной литературы, принесших автору Нобелевскую премию. Действие романа происходит на фоне важнейших событий в истории России первой половины ХХ века – революции и Гражданской войны, поменявших не только древний уклад донского казачества, к которому принадлежит главный герой Григорий Мелехов, но и судьбу, и облик всей страны. В этом грандиозном произведении нашлось место чуть ли не для всего самого увлекательного, что может предложить читателю художественная литература: здесь и великие исторические реалии, и любовные интриги, и описания давно исчезнувших укладов жизни, многочисленные героические и трагические события, созданные с большой художественной силой и мастерством, тем более поразительными, что Михаилу Шолохову на момент создания первой части романа исполнилось чуть больше двадцати лет.',
        price: 230,
      imgUrl: 'image/6.jpg' ,
    ),

    Product(
        id: '7',
        title: 'Великий Гэтсби',
        author: 'Френсис Фицджеральд',
      genres: ' Зарубежная классика, Классическая проза',
        description: '«Бурные» двадцатые годы прошлого столетия…'
            'Время шикарных вечеринок, «сухого закона» и «легких» денег…'
            'Эти «новые американцы» уверены, что расцвет будет вечным, что, достигнув вершин власти и богатства, они обретут и личное счастье…'
            'Таким был и Джей Гэтсби, ставший жертвой бессмысленной погони за пленительной мечтой об истинной и вечной любви, которой не суждено было сбыться…',
        price: 230,
      imgUrl: 'image/7.jpg' ,
    ),

    Product(
        id: '8',
        title: 'Фауст',
        author: 'Иоганн Вольфганг Гёте',
      genres: 'Мистика',
        description: 'В основу произведения легла история некогда жившего доктора Фауста, чей образ был окутан тайнами и легендами. Гёте удалось создать уникальную философскую драму эпохи просвещения, повествующую об алхимике и чернокнижнике, продавшем душу дьяволу ради раскрытия тайны мироздания. Он бросает вызов судьбе в отчаянной попытке познать жизнь. Через сложную поэтическую форму автор выразил собственное понимание жизни и затронул главные философские проблемы человечества. Благодаря необычному ритму, мелодике, а также многогранным образам «Фауст» считается вершиной немецкой поэзии. На протяжении двухсот лет данный сюжет служит основой для постановок на лучших театральных площадках мира.',
        price: 225,
      imgUrl: 'image/8.jpg' ,
    ),

    Product(
        id: '9',
        title: 'Алхимик',
        author: 'Пауло Коэльо',
      genres: 'Современная зарубежная литература',
        description: 'Алхимик» – самый известный роман бразильского писателя Пауло Коэльо, любимая книга миллионов людей во всем мире. В юности люди не боятся мечтать, все кажется им возможным. Но проходит время, и таинственная сила принимается им внушать, что их желания неосуществимы. «Добиться воплощения своей Судьбы – вот единственная подлинная обязанность человека…», – утверждает Пауло Коэльо. Этот, ставший культовым, роман-притча способен изменить жизнь своих читателей.',
        price: 350,
      imgUrl: 'image/9.jpg' ,
    ),

    Product(
        id: '10',
        title: 'Лучник',
        author: 'Пауло Коэльо',
      genres: 'Исторические приключения, Морские приключения',
        description: '«Лучник» – философская притча, обобщившая многолетний духовный опыт легендарного писателя. Подарочное издание с атмосферными иллюстрациями Евы Эллер по достоинству оценит каждый, кто ищет ответы на извечные вопросы.'
            'Путь стрелка — это путь радости и воодушевления, совершенствования и заблуждений, техники и наития. Но всему этому ты научишься, только если будешь неустанно посылать стрелы.',
        price: 325,
      imgUrl: 'image/10.jpg' ,
    ),
  ];

UnmodifiableListView<Product> get items => UnmodifiableListView(_items);

getElementById(String id ) => _items.singleWhere((value) => value.id == id);

}






