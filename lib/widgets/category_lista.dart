import 'package:flutter/material.dart';
import 'package:ipora_selected/widgets/category_listem.dart';

class ListaDeCategorias extends StatefulWidget {
  @override
  _ListaDeCategoriasState createState() => _ListaDeCategoriasState();
}

class _ListaDeCategoriasState extends State<ListaDeCategorias> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        CategoryListItem(
          categoryIcon: Icons.fastfood,
          categoryName: "Hamburger",
          availability: 10,
          selected: true,
        ),
        CategoryListItem(
          categoryIcon: Icons.local_pizza,
          categoryName: "Pizza",
          availability: 5,
          selected: false,
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
    );
  }
}
