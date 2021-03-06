import 'package:boring_app/ui/common/app_background.dart';
import 'package:boring_app/ui/common/rounded_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: AppBackground(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[text(), form()],
        )));
  }

  Widget text() {
    return Padding(
      padding: EdgeInsets.only(left: 36, right: 36, top: 40),
      child: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: 'А теперь,\n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
          TextSpan(
              text: 'Залогинься!\n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 44)),
          TextSpan(
              text: '(плиз)',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16))
        ]),
      ),
    );
  }

  Widget form() {
    return Expanded(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 36),
      child: LoginForm(),
    ));
  }
}

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final _loginFormKey = GlobalKey<FormState>();
  var _login = "";
  var _password = "";

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _loginFormKey,
        child: Padding(
            padding: EdgeInsets.only(top: 48, bottom: 32),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Text('Логин',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600))),
                        Container(
                            height: 56,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white),
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 14),
                                child: Center(
                                  child: TextFormField(
                                      validator: (value) => value.isEmpty
                                          ? 'User login is missing'
                                          : null,
                                      onSaved: (val) => _login = val,
                                      decoration:
                                          const InputDecoration.collapsed(
                                              border: InputBorder.none,
                                              hintStyle: TextStyle(
                                                  fontSize: 16,
                                                  color: Color.fromARGB(
                                                      255, 208, 208, 208)),
                                              hintText: 'Логин')),
                                ))),
                        Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 8),
                            child: Text('Пароль',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600))),
                        Container(
                            height: 56,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white),
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 14),
                                child: Center(
                                  child: TextFormField(
                                      validator: (value) => value.isEmpty
                                          ? 'User password is missing'
                                          : null,
                                      onSaved: (val) => _password = val,
                                      decoration:
                                          const InputDecoration.collapsed(
                                              border: InputBorder.none,
                                              hintStyle: TextStyle(
                                                  fontSize: 16,
                                                  color: Color.fromARGB(
                                                      255, 208, 208, 208)),
                                              hintText: 'Пароль')),
                                )))
                      ]),
                  RoundedButton(
                      title: 'Войти',
                      onPress: () {
                        final form = _loginFormKey.currentState;
                        if (form.validate()) {
                          form.save();
                          Navigator.of(context).pushNamed('/login_complete');
                        }
                      }),
                ])));
  }
}
