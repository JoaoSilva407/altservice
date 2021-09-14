import 'package:flutter/material.dart';

import '../colors.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(color: colorOne),
        leadingWidth: 25.0,
        title: Text(
          'Menu',
          style: TextStyle(
            color: colorOne,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: colorOne,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.topLeft,
        color: Colors.white,
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              child: Row(
                children: [
                  TextButton.icon(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                    label: Text('Configurações'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(
                color: Colors.grey,
                height: 0.0,
              ),
            ),
            Container(
              width: size.width,
              child: TextButton.icon(
                autofocus: false,
                style: ButtonStyle(
                  alignment: Alignment.centerLeft,
                ),
                icon: Icon(
                  Icons.settings,
                  color: Colors.grey,
                  size: 25.0,
                ),
                label: Text(
                  'Configurações',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              width: size.width,
              child: TextButton.icon(
                autofocus: false,
                style: ButtonStyle(
                  alignment: Alignment.centerLeft,
                ),
                icon: Icon(
                  Icons.help,
                  color: Colors.grey,
                  size: 25.0,
                ),
                label: Text(
                  'Ajuda',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              width: size.width,
              child: TextButton.icon(
                autofocus: false,
                style: ButtonStyle(
                  alignment: Alignment.centerLeft,
                ),
                icon: Icon(
                  Icons.inventory,
                  color: Colors.grey,
                  size: 25.0,
                ),
                label: Text(
                  'Sobre',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              width: size.width,
              child: TextButton.icon(
                autofocus: false,
                style: ButtonStyle(
                  alignment: Alignment.centerLeft,
                ),
                icon: Icon(
                  Icons.report_problem,
                  color: Colors.grey,
                  size: 25.0,
                ),
                label: Text(
                  'Relatar um problema',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              width: size.width,
              child: TextButton.icon(
                autofocus: false,
                style: ButtonStyle(
                  alignment: Alignment.centerLeft,
                ),
                icon: Icon(
                  Icons.logout,
                  color: Colors.grey,
                  size: 25.0,
                ),
                label: Text(
                  'Sair',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
