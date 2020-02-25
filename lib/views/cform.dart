import 'package:flutter/material.dart';
import 'package:meca/widgets/buttons.dart';
import 'package:meca/widgets/form_fields.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class ConsultationForm extends StatefulWidget{
  @override 
  ConsultationFormState createState() => ConsultationFormState();
}

class ConsultationFormState extends State<ConsultationForm> {

  final title = TextEditingController();
  final desc = TextEditingController();

  DateTime date;
  String reqType = '0';

  Widget build(BuildContext context)
  {
    return Scaffold( 
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blue[600], Colors.lightBlue[200]]
          )
        ),
        child: ListView(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.blue[600], Colors.lightBlue[200]]
                    )
                ),
                child: Padding(
                    padding: new EdgeInsets.fromLTRB(12, 50, 12, 12),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                            width: 160,
                            height: 160,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/m.jpg'),
                            )
                        ),
                        Padding(
                            padding: new EdgeInsets.fromLTRB(0, 20, 0, 4),
                            child: Column(
                              children: <Widget>[
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: <TextSpan> [
                                      TextSpan(
                                        text: "You are about to request consulation with \n"
                                      ),
                                      TextSpan(
                                        text: "[Faculty Name Here].",
                                        style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                        )
                                      )
                                    ]
                                  ),
                                )
                              ],
                            )
                        ),
                        Divider(
                          color: Colors.white
                        ),
                        MecaTextField(placeholder: 'Request Title', controller: title),
                        MecaTextArea(placeholder: 'Description', controller: desc),
                        MecaTextField(placeholder: 'Scheduled Date',
                            controller: null,
                            onTap: () {
                              DatePicker.showDatePicker(context,
                              pickerMode: DateTimePickerMode.date,
                              minDateTime: DateTime.now(),
                              maxDateTime: DateTime.parse('2020-12-30'),
                              onChange: (date, selectedIndex) {
                                this.date = date;
                                print("DATE: " + this.date.toString());
                              });
                            }),
                        MecaTextField(placeholder: 'Scheduled Time (From)',
                            controller: null,
                            onTap: () {
                              DatePicker.showDatePicker(context,
                                  pickerMode: DateTimePickerMode.time,
                                  onChange: (date, selectedIndex) {
                                    this.date = date;
                                    print("DATE: " + this.date.toString());
                                  });
                            }),
                        MecaTextField(placeholder: 'Scheduled Time (To)',
                            controller: null,
                            onTap: () {
                              DatePicker.showDatePicker(context,
                                  pickerMode: DateTimePickerMode.time,
                                  onChange: (date, selectedIndex) {
                                    this.date = date;
                                    print("DATE: " + this.date.toString());
                                  });
                            }),

                        Padding(
                          padding: new EdgeInsets.only(top: 30),
                          child: Column(
                            children: <Widget>[
                              Text('Are you making this request as an individual or part of a group?'),
                              Row(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Radio(
                                        value: '1',
                                        onChanged: (value) => setState(() => reqType = value),
                                        groupValue: reqType,
                                        activeColor: Colors.white,
                                      ),
                                      Text('Individual'),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Radio(
                                        value: '2',
                                        onChanged: (value) => setState(() => reqType = value),
                                        groupValue: reqType,
                                        activeColor: Colors.white,
                                      ),
                                      Text('Group'),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        ),

                        MecaFlatButton(
                          text: 'Submit Request',
                          color: Colors.white,
                          onPressed: () {},
                        )


                      ],
                    )
                )
            ),

          ],
        )
      )
    );
  }
}