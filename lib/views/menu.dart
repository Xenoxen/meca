import 'package:flutter/material.dart';
import 'package:meca/views/profile.dart';
import 'package:meca/widgets/appBar.dart';
import 'package:meca/widgets/form_fields.dart';
import 'package:meca/widgets/buttons.dart';

class SettingsView extends StatefulWidget {

  SettingsView({Key key}):super(key: key);
  @override
  SettingsViewState createState() => SettingsViewState();
}

class SettingsViewState extends State<SettingsView> {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(),
        body: ListView(
          padding: new EdgeInsets.all(10),
          shrinkWrap: true,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => StudentProfile(id: 1)
                      ));
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/m.jpg'),
                ),
                title: Text("Frolyn Raguindin",
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                subtitle: Text("View Profile"),
              ),
            ),

            Divider(),
            MecaFlatButtonIcon(text: 'Settings',
                onPressed: () {},
                icon: Icons.settings),
            MecaFlatButtonIcon(text: 'Logout',
                onPressed: () {},
                icon: Icons.call_missed)
          ],
        ),



    );
  }
}