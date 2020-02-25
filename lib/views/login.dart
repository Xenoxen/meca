import 'package:flutter/material.dart';
import 'package:meca/views/facultylist.dart';
import 'package:meca/views/home.dart';
import 'package:meca/widgets/buttons.dart';
import 'package:meca/widgets/navBar.dart';
import 'package:meca/auth.dart';
import 'package:flutter_appauth/flutter_appauth.dart';

class LoginView extends StatefulWidget{
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<LoginView>
{
  FlutterAppAuth appAuth = FlutterAppAuth();

  void getLogin() async {
    final AuthorizationTokenResponse result = await appAuth.authorizeAndExchangeCode(
      AuthorizationTokenRequest(
        '<client_id>',
        '<redirect_url>',
        discoveryUrl: '<discovery_url>',
        scopes: ['openid','profile', 'email', 'offline_access', 'api'],
      ),
    );
    print(result.toString());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blue[600], Colors.lightBlue[200]]
          )
        ),
        child: Center(
            child: ListView(
              shrinkWrap: true,
              padding: new EdgeInsets.all(30),
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                        height: 350,
                        child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                    image: AssetImage('assets/images/meca_logo_raw_white.png'),
                                    width: 180
                                ),
                                Padding(
                                    padding: new EdgeInsets.only(top: 20),
                                    child: Text('A Mobile-Efficient Consultation App',
                                        textAlign: TextAlign.center,
                                        style: new TextStyle(
                                            fontSize: 16,
                                            color: Colors.white
                                        ))
                                ),
                              ],
                            )
                        )
                    ),
                    Padding(
                      padding: new EdgeInsets.only(bottom: 6),
                      child: MecaFlatButtonCustom(
                        text: 'Sign in with Office 365 Account',
                        image: 'assets/images/TSUC.png',
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(
                                  builder: (context) => StudentNavBar(
                                      index: 0
                                  )
                              ));
                          /*
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => FacultyListView()
                          ),);
                        print('test');

                         */
                        },
                      )
                    ),
/*
                    MecaFlatButtonCustom(
                      text: 'Sign in with Office 365 Account (Faculty)',
                      image: 'assets/images/TSUC.png',
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(
                                builder: (context) => FacultyNavBar(
                                    index: 0
                                )
                            ));
                        /*
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => FacultyListView()
                          ),);
                        print('test');

                         */
                      },
                    ),

 */
                    /*
                    MecaFlatButtonCustom(
                      text: 'Authentication Test',
                      image: 'assets/images/TSUC.png',
                      onPressed: () {
                        getLogin();
                      },
                    ),
                     */
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("Copyright CCS Programmers' Den 2020",
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              color: Colors.white
                          )),
                      Text("Version 0.0.1a",
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              color: Colors.white
                          ))
                    ],
                  ),
                )

              ],
            )
        )
      )
    );
  }
}