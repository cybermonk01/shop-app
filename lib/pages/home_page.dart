import 'package:flutter/material.dart';
import 'package:shopp/pages/dashboard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _widgetList = [
    DashBoard(),
    DashBoard(),
    DashBoard(),
    DashBoard()
  ];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      bottomNavigationBar: BottomNavigationBar(
          items: [
BottomNavigationBarItem(icon: Icon(Icons.home,
),
title: Text('Store',style: TextStyle(),
),
),
BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,
),
title: Text('My Cart',style: TextStyle(),
),
),BottomNavigationBarItem(icon: Icon(Icons.favorite,
),
title: Text('Favourites',style: TextStyle(),
),
),BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle,
),
title: Text('Account',style: TextStyle(),
),
),



          ],
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.shifting,
          currentIndex: _index,
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          ),
      body: _widgetList[_index],
    );
  }
}

Widget _buildAppBar() {
  return AppBar(
    centerTitle: true,
    brightness: Brightness.dark,
    elevation: 0,
    backgroundColor: Colors.redAccent,
    automaticallyImplyLeading: true,
    title: Text(
      'JMD',
      style: TextStyle(color: Colors.white),
    ),
    actions: [
      Icon(
        Icons.notifications_none,
        color: Colors.white,
      ),
      SizedBox(
        width: 10,
      ),
      Icon(
        Icons.shopping_cart,
        color: Colors.white,
      ),
       SizedBox(
        width: 10,
      ),
    ],
  );
}
