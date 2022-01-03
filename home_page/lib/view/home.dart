import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'package:home_page/view/card.dart';

import 'model/cardmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ModelCard> cards = [
    ModelCard ('Angkor Wat', 'Cambodia','cambodia.jpg'),
    ModelCard ('Bangkok', 'ThaiLand','thailand.jpg'),
    ModelCard ('Ha Long', 'Viet Nam','vietnam.jpg'),
    ModelCard ('Bali', 'Indonesia','cambodia.jpg'),
    ModelCard ('Hawaii', 'US','hinh1.jpg'),
    ModelCard ('Cebu', 'Philippenes', 'hinh2.jpg'),
  ];

  List<ModelCard> girls = [
    ModelCard ('Hoa Ngoc', 'Viet Nam','girl_2.jpg'),
    ModelCard ('Hoa Lan', 'Viet Nam','girl_1.jpg'),
    ModelCard ('Taylor', 'UK','girl_4.jpg'),
    ModelCard ('Bao Ngoc', 'Viet Nam','girl_2.jpg'),
    ModelCard ('Ngoc Lan', 'Viet Nam','girl_3.jpg'),
    ModelCard ('Hoa Lan', 'Viet Nam','girl_3.jpg'),
  ];

  Widget buildCard(List<ModelCard> _cards){
    return SizedBox(
      height: 300,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: (100 / 120),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
          ),
          padding: const EdgeInsets.all(20),
          scrollDirection: Axis.horizontal,
          itemCount: _cards.length,
          itemBuilder: (BuildContext ctx, index){
            return ItemCard(_cards[index].address, _cards[index].country, _cards[index].img);
          }
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.height*1,
            color: Colors.green,
            child: ImageSlideshow(
              width: double.infinity,
              height: 240,
              initialPage: 0,
              indicatorColor: Colors.blue,
              indicatorBackgroundColor: Colors.grey,
              autoPlayInterval: 5000,
              isLoop: true,
              children: [
                Image.asset(
                  'assets/images/hinh1.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/hinh2.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/hinh3.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/hinh1.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 8),
                          child: Text(
                            'Cities where Fellow is a vailible',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(''),
                        )
                      ],
                    ),
                    buildCard(cards),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Best Fellow',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(''),
                        )
                      ],
                    ),
                    buildCard(girls),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
