import 'package:flutter/material.dart';
import 'package:ipora_selected/screens/draw_screen.dart';
import 'package:ipora_selected/screens/hamburguer.dart';
import 'package:ipora_selected/screens/pizzas.dart';
import 'package:ipora_selected/widgets/Items_widget.dart';
import 'package:ipora_selected/widgets/category_card_widget.dart';
import 'package:ipora_selected/widgets/category_listem.dart';
import 'package:ipora_selected/widgets/food_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Firestore.instance.collection('hamburguers').document().setData({ 'title': 'title', 'author': 'author' });
        },
      ),
      drawer: Drawer(
        child: Draw_Screen(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 40.0, right: 40.0),
        child: Container(
            height: 60.0,
            color: Colors.transparent,
            child: Container(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Icon(Icons.local_mall),
                      Text('Lojas')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Icon(Icons.monetization_on),
                      Text('Promoções')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Icon(Icons.favorite),
                      Text('Favoritos')
                    ],
                  ),
                ],
              ),
            )),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.reorder,
                    color: Colors.black45,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.black45,
                  ),
                  onPressed: () {},
                ),
                
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.black45,
                  ),
                  SizedBox(width: 15.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search....",
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          hintStyle: TextStyle(
                            color: Colors.black87,
                          ),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red))),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CategoryListItem(
                    categoryIcon: Icons.fastfood,
                    categoryName: "Hamburger",
                    availability: 10,
                    selected: false,
                  ),
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: CategoryListItem(
                      categoryIcon: Icons.local_pizza,
                      categoryName: "Pizza",
                      availability: 5,
                      selected: false,
                    ),
                  ),
                  CategoryListItem(
                    categoryIcon: Icons.local_dining,
                    categoryName: "Jantinha",
                    availability: 2,
                    selected: false,
                  ),
                  CategoryListItem(
                    categoryIcon: Icons.local_bar,
                    categoryName: "Milk Shake",
                    availability: 1,
                    selected: false,
                  ),
                  CategoryListItem(
                    categoryIcon: Icons.bug_report,
                    categoryName: "Açai",
                    availability: 6,
                    selected: false,
                  ),
                ],
              ),
            ),
                ],
              ),
            ),










            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Container(
                height: 1250.0,
                child: PageView(
                  children: <Widget>[
                    Hamburguers(),
                    Pizzas(),

                    
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
