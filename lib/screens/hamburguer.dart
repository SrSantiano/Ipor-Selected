
import 'package:flutter/material.dart';
import 'package:ipora_selected/widgets/food_item.dart';
import 'package:ipora_selected/widgets/Items_widget.dart';
class Hamburguers extends StatefulWidget {
  @override
  _HamburguersState createState() => _HamburguersState();
}

class _HamburguersState extends State<Hamburguers> {
  @override
  Widget build(BuildContext context) {
    return Column(
                      children: <Widget>[
                        Container(
                      height: 320.0,
                      child: Items(
                        itemName: 'Bacon Duplo',
                        leftAligned: false,
                         itemPrice: 20.0, 
                         hotel: 'Quintal Burguer',
                         imgUrl: 'https://portal.minervafoods.com/files/como_fazer_hamburguer_caseiro.jpg',),
                    ),
                    Container(
                      height: 320.0,
                      child: Items(
                        itemName: 'Power Bull',
                        leftAligned: true,
                         itemPrice: 18.0, 
                         hotel: 'Total Burguer',
                         imgUrl: 'https://statig0.akamaized.net/bancodeimagens/at/fn/9r/atfn9reagx5hg9383kbd2cx1r.jpg',),
                    ),
                    Container(
                      height: 320.0,
                      child: Items(
                        itemName: 'Jack Sparrow',
                        leftAligned: false,
                         itemPrice: 25.0, 
                         hotel: 'Nerds Burguer',
                         imgUrl: 'https://www.bombayherbsspices.com.br/anexos/receitas2/20194/grandes/hamburguer-alhonegro.jpg',),
                    ),
                    Container(
                      height: 320.0,
                      child: Items(
                        itemName: 'Triplo',
                        leftAligned: true,
                         itemPrice: 28.0, 
                         hotel: 'Quintal Burguer',
                         imgUrl: 'https://www.revistamenu.com.br/wp-content/uploads/2019/05/istock-617759204-1050x700.jpg',),
                    ),
                      ],
                    );
  }
}