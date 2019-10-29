import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passWordController = new TextEditingController();
  String _user = "";

  void _clear() {
    setState(() {
      _userController.clear();
      _passWordController.clear();
      _user = "";
    });
  }

  void _hey() {
    setState(() {
      if (_userController.text.isNotEmpty &&
          _passWordController.text.isNotEmpty) {
        _user = "Welcome " + _userController.text;
      } else {
        _user = "check your user name\n and password";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("LOGIN"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent.shade400,
      ),
      backgroundColor: Colors.blueGrey,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          children: <Widget>[
            //pour image
            new Image.asset(
              "images/face.png",
              width: 90.0,
              height: 90.0,
              color: Colors.white,
            ),
            //form
            new Container(
              height: 180.0,
              width: 380.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    //permet accee ou text taper par utilisateur
                    decoration: new InputDecoration(
                        hintText: "user name", icon: new Icon(Icons.person)),
                  ),
                  new TextField(
                    controller: _passWordController,
                    //permet accee ou text taper par utilisateur
                    decoration: new InputDecoration(
                        hintText: "pass word", icon: new Icon(Icons.lock)),
                    obscureText: true, //to have password like this *****
                  ),
                  new Padding(padding: new EdgeInsets.all(10.5)),
                  new Center(
                    child: new Row(
                      children: <Widget>[
                        //ButtonConnexion
                        new Container(
                          margin: const EdgeInsets.only(left: 38.0),
                          child: new RaisedButton(
                            onPressed: _hey,
                            color: Colors.blue.shade400,
                            child: new Text(
                              "login",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(left: 110.0),
                          child: new RaisedButton(
                            onPressed: _clear,
                            color: Colors.blue.shade400,
                            child: new Text(
                              "Clear",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ), //fin de formulaire de connexion
            new Padding(padding: new EdgeInsets.all(25.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "$_user",
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
