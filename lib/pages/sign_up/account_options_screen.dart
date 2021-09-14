import 'package:flutter/material.dart';

import '../../colors.dart';
import 'sign_up_sp_screen.dart';

class AccountOptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: colorOne),
        leadingWidth: 25.0,
        title: Text(
          'Criar conta como?',
          style: TextStyle(
            color: colorOne,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 10.0,
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpSpScreen()),
                  );
                },
                child: Container(
                  width: size.width,
                  height: size.height / 2.5,
                  decoration: BoxDecoration(
                    color: colorFour,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: colorOne, width: 5.0),
                  ),
                  child: Image(
                    image: AssetImage('assets/images/prestador_servicos.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: size.width,
                  height: size.height / 2.5,
                  decoration: BoxDecoration(
                    color: colorFour,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: colorOne, width: 5.0),
                  ),
                  child: Image(
                    image: AssetImage('assets/images/cliente.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
