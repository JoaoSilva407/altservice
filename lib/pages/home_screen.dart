import 'package:flutter/material.dart';

import '../colors.dart';
import './menu_screen.dart';
import './search_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text(
            'AltService',
            style: TextStyle(
              color: colorOne,
              fontSize: 30.0,
              fontFamily: 'AdamScript',
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: colorOne,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.menu,
                color: colorOne,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen()),
                );
              },
            ),
          ],
          bottom: TabBar(
            indicatorColor: colorOne,
            labelColor: colorOne,
            indicatorWeight: 4,
            tabs: [
              Tab(icon: Icon(Icons.home, size: 28.0)),
              Tab(icon: Icon(Icons.people, size: 28.0)),
              Tab(icon: Icon(Icons.add_box, size: 28.0)),
              Tab(icon: Icon(Icons.message, size: 28.0)),
              Tab(icon: Icon(Icons.notifications, size: 28.0)),
            ],
          ),
        ),
      ),
    );
  }
}
