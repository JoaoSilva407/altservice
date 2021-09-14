import 'package:flutter/material.dart';

import '../../colors.dart';
import '../terms_of_use_screen.dart';
import 'account_options_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isPhone = true;
  bool isConfirm = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          color: Colors.white,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: size.width / 2.5,
                    color: colorOne,
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      width: size.width,
                      height: size.height / 2.5,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: isPhone
                                      ? BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Colors.black,
                                            ),
                                          ),
                                        )
                                      : BoxDecoration(),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        isPhone = true;
                                      });
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Telefone',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: isPhone
                                                ? FontWeight.bold
                                                : FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: isPhone
                                      ? BoxDecoration()
                                      : BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        isPhone = false;
                                      });
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Email',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: isPhone
                                                ? FontWeight.normal
                                                : FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: isPhone
                                  ? Row(
                                      children: [
                                        Text(
                                          '+55',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30.0,
                                          child: VerticalDivider(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Expanded(
                                          child: TextFormField(
                                            autofocus: false,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Telefone',
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : TextFormField(
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Email',
                                      ),
                                    ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  isConfirm == false
                                      ? Icons.check_box_outline_blank
                                      : Icons.check_box,
                                ),
                                onPressed: () {
                                  setState(() {
                                    isConfirm == true
                                        ? isConfirm = false
                                        : isConfirm = true;
                                  });
                                },
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            TermsOfUseScreen()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      'Confirme os ',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      'termos de uso',
                                      style: TextStyle(
                                        color: colorOne,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: colorOne,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AccountOptionsScreen()),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Continuar',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(height: 10.0, color: Colors.grey),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Já possui cadastro?',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()),
                          );
                        },
                        child: Text(
                          'Entrar',
                          style: TextStyle(color: colorOne, fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
