import 'package:flutter/material.dart';
import 'package:ipora_selected/screens/draw_screen.dart';
import 'package:ipora_selected/screens/hamburguer.dart';
import 'package:ipora_selected/screens/pizzas.dart';


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ipora_selected/widgets/category_lista.dart';

class Home_Page extends StatefulWidget {
  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  bool select = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Firestore.instance
              .collection('hamburguers')
              .document()
              .setData({'title': 'title', 'author': 'author'});
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 10),
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

                  //
                  Container(
                    height: 200.0,
                    child: ListaDeCategorias()
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
