import 'package:flutter/material.dart';
import 'package:meca/widgets/appBar.dart';
import 'package:meca/widgets/cards.dart';
import 'package:meca/widgets/form_fields.dart';

class FacultyListView extends StatelessWidget{

  FacultyListView({Key key}): super(key: key);

  Widget build(BuildContext context){
    return Scaffold(
      appBar: DefaultAppBar(),
      bottomNavigationBar: Container(
        padding: new EdgeInsets.all(10),
        color: Colors.blue[100],
        child: MecaTextField(placeholder: 'Search Faculty Name', controller: null),
      ),
      body: ListView(
        padding: new EdgeInsets.all(12),
        shrinkWrap: true,
        children: <Widget>[
          Faculty(id: 1),
          Faculty(id: 2),
          Faculty(id: 3),
          Faculty(id: 4),
          Faculty(id: 5),
          Faculty(id: 6),
          Faculty(id: 7),
          Faculty(id: 8),
          Faculty(id: 9),
          Faculty(id: 10),
        ],
      )
    );
  }
}