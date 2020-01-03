
import 'package:flutter/material.dart';
import 'package:ipora_selected/widgets/food_item.dart';
import 'package:ipora_selected/widgets/Items_widget.dart';

class Pizzas extends StatefulWidget {
  @override
  _PizzasState createState() => _PizzasState();
}

class _PizzasState extends State<Pizzas> {
  @override
  Widget build(BuildContext context) {
    return Column(
                      children: <Widget>[
                        Container(
                      height: 310.0,
                      child: Items(
                        itemName: 'Italiana',
                        leftAligned: false,
                         itemPrice: 45.0, 
                         hotel: 'KiDelicia Pizzaria',
                         imgUrl: 'https://www.pizzatec.com.br/assets/uploads/images/2018/06/melhor-pizza.jpg',),
                    ),
                    Container(
                      height: 310.0,
                      child: Items(
                        itemName: 'Portuguesa',
                        leftAligned: true,
                         itemPrice: 48.0, 
                         hotel: 'Sicarelli',
                         imgUrl: 'https://img.stpu.com.br/?img=https://s3.amazonaws.com/pu-mgr/default/a0R0f00000yjcijEAA/5ac63743e4b042028b7bb428.jpg&w=710&h=462',),
                    ),
                    Container(
                      height: 310.0,
                      child: Items(
                        itemName: 'Peperoni',
                        leftAligned: false,
                         itemPrice: 39.0, 
                         hotel: 'Della Pizzaria',
                         imgUrl: 'https://static.wixstatic.com/media/6e9008_ef5774ceeee542a389f86a2b37e01b50~mv2.jpg/v1/fill/w_640,h_338,al_c,q_80,usm_0.66_1.00_0.01/6e9008_ef5774ceeee542a389f86a2b37e01b50~mv2.webp',),
                    ),
                    Container(
                      height: 310.0,
                      child: Items(
                        itemName: 'Pizza do chege Santiano',
                        leftAligned: true,
                         itemPrice: 150.0, 
                         hotel: 'Santiano Pizzaria',
                         imgUrl: 'https://www.pizzeriaimperial.es/wp-content/uploads/2017/05/pizza-margarita-imperial-pizzeria.jpg',),
                    ),
                      ],
                    );
  }
}