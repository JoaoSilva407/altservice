import 'package:flutter/material.dart';

import '../colors.dart';

class TermsOfUseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: colorOne),
        leadingWidth: 25.0,
        title: Text(
          'Termos de uso',
          style: TextStyle(
            color: colorOne,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButtonHideUnderline(
                child: DropdownButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: colorOne,
                  ),
                  items: [
                    DropdownMenuItem(
                      value: 'duvidas',
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.help, color: Colors.yellow),
                            SizedBox(width: 8),
                            Text('Dúvidas'),
                          ],
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'error',
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.report_problem, color: Colors.red),
                            SizedBox(width: 8),
                            Text('Relatar um problema'),
                          ],
                        ),
                      ),
                    )
                  ],
                  onChanged: (item) async {
                    if (item == 'excluir') {
                      Navigator.pop(context);
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
