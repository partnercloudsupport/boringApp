import 'package:boring_app/ui/common/app_background.dart';
import 'package:boring_app/ui/common/rounded_button.dart';
import 'package:flutter/material.dart';

class GreetingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBackground(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(
                          top: 40,
                          bottom: 56,
                          left: 4,
                          right: 4,
                        ),
                        child: RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'Привет,\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                )),
                            TextSpan(
                                text: 'Красотка!',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 52,
                                )),
                          ]),
                        )),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.only(
                                left: 24, top: 20, right: 24, bottom: 32),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(96, 94, 114, 224),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  topRight: Radius.circular(24),
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 16),
                                        child: Text(
                                          'Поздравляю!',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                          ),
                                        )),
                                    Text(
                                      'Международный Женский день официально утвержден ООН в 1977 году, но история праздника начинается весной 1901 года. Тогда 8 Марта американские домохозяйки нарушили тишину чикагских улиц грохотом пустых кастрюль и ведер. Таким необычным способом они требовали законного равноправия с мужчинами.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat'),
                                    ),
                                  ],
                                ),
                                RoundedButton(
                                  title: 'Продолжить',
                                  onPress: () {
                                    Navigator.of(context).pushNamed('/camera');
                                  },
                                )
                              ],
                            )))
                  ],
                ))));
  }
}
