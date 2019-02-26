import 'package:boring_app/ui/common/app_background.dart';
import 'package:boring_app/ui/common/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginCompleteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBackground(
            child: Container(
                padding:
                    EdgeInsets.only(left: 28, bottom: 32, right: 28, top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(94),
                        child: SvgPicture.asset('assets/heart.svg'),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                          top: 30,
                          bottom: 40,
                        ),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'username!\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50,
                                  fontFamily: 'Montserrat',
                                )),
                            TextSpan(
                                text: 'Ты восхитительна!',
                                style: TextStyle(
                                  height: 1.2,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                  fontFamily: 'Montserrat',
                                )),
                          ]),
                        )),
                    RoundedButton(
                      title: 'Продолжить',
                      onPress: () {
                        Navigator.of(context).pushNamed('/home');
                      },
                    )
                  ],
                ))));
  }
}
