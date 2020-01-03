import 'package:flutter/material.dart';

String _nome = 'Vinicius';

class Draw_Screen extends StatefulWidget {
  @override
  _Draw_ScreenState createState() => _Draw_ScreenState();
}

class _Draw_ScreenState extends State<Draw_Screen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Vinicius Santiano"),
            accountEmail: Text("viniciussantiano@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://scontent.frvd1-1.fna.fbcdn.net/v/t1.0-9/10403527_780336095351589_3692185834083785044_n.jpg?_nc_cat=106&_nc_ohc=INiTL2rwIuEAQkNWNmV4QawMgsKPfBcTVCKuAzCYC79-evf3nJOyX8A_g&_nc_ht=scontent.frvd1-1.fna&oh=c2ce5b11de890241b4977dc6464d291b&oe=5E665C7F'),
            ),
            decoration: BoxDecoration(
              
              image: const DecorationImage(
                image: NetworkImage(
                    'http://www.cambyte.com/wp-content/uploads/2017/04/Header-pic.jpg'),
                fit: BoxFit.cover,
              ),
              color: Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}
