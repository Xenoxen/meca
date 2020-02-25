import 'package:flutter/material.dart';
import 'package:meca/views/cform.dart';
import 'package:meca/widgets/appBar.dart';
import 'package:meca/widgets/buttons.dart';
import 'package:meca/widgets/cards.dart';
import 'package:table_calendar/table_calendar.dart';

class FacultyProfile extends StatefulWidget{

  FacultyProfile({
    Key key,
    @required this.id,
  }): super(key:key);

  final int id;

  @override
  FacultyProfileState createState() => FacultyProfileState();
}
class FacultyProfileState extends State<FacultyProfile> {

  CalendarController _calendarController;
  bool student = true;
  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }
  Widget build(BuildContext context){


    return Scaffold(
      appBar: DefaultAppBar(
        title: 'My Profile'
      ),
        body: ListView(
          shrinkWrap: true,
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
                            child: Hero(
                              tag: 'facultyProfile-${widget.id}',
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/images/m.jpg'),
                              )
                            )
                        ),
                        Padding(
                            padding: new EdgeInsets.fromLTRB(0, 20, 0, 4),
                            child: Column(
                              children: <Widget>[
                                Text('Faculty Member Name',
                                    style: Theme.of(context).textTheme.title),
                                Text('Faculty Member Position',
                                    style: Theme.of(context).textTheme.subhead)
                              ],
                            )
                        ),
                        Visibility(
                          visible: student,
                          replacement: Padding(
                              padding: new EdgeInsets.only(top: 10),
                              child: MecaFlatButton(
                                  text: 'Update Status',
                                  onPressed:() {
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) => ConsultationForm()
                                      ),);

                                  }
                              )
                          ),
                          child: Padding(
                              padding: new EdgeInsets.only(top: 10),
                              child: MecaFlatButton(
                                  text: 'Request Consultation',
                                  onPressed:() {
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) => ConsultationForm()
                                      ),);

                                  }
                              )
                          ),
                        ),

                      ],
                    )
                )
            ),

            DefaultTabController(
                length: 2,
                child: Column(
                  children: <Widget>[
                    TabBar(
                      indicatorColor: Theme.of(context).primaryColor,
                      tabs: [
                        Tab(icon: Icon(Icons.dashboard,
                        color: Theme.of(context).primaryIconTheme.color)),
                        Tab(icon: Icon(Icons.calendar_today,
                        color: Theme.of(context).primaryIconTheme.color))
                      ],
                    ),
                    SizedBox(
                      height: 350,
                      child: TabBarView(
                        children: [
                          ListView(
                            padding: new EdgeInsets.all(10),
                            children: <Widget>[
                            StatusEntry()

                          ],),
                          TableCalendar(
                            calendarController: _calendarController,
                            initialCalendarFormat: CalendarFormat.week,
                            availableGestures: AvailableGestures.none,
                            availableCalendarFormats: const {
                              CalendarFormat.week: 'Week',
                              CalendarFormat.twoWeeks: '2 Weeks'
                            },
                          )
                        ],
                      ),
                    )

                  ],
                )
            )

          ],
        )
    );
  }
}

class StudentProfile extends StatefulWidget{

  StudentProfile({
    Key key,
    @required this.id,
  }): super(key:key);

  final int id;

  @override
  StudentProfileState createState() => StudentProfileState();
}
class StudentProfileState extends State<StudentProfile> {

  CalendarController _calendarController;
  bool student = false;
  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }
  Widget build(BuildContext context){


    return Scaffold(
        appBar: DefaultAppBar(
            title: 'My Profile'
        ),
        body: ListView(
          shrinkWrap: true,
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
                            child: Hero(
                                tag: 'facultyProfile-${widget.id}',
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/images/m.jpg'),
                                )
                            )
                        ),
                        Padding(
                            padding: new EdgeInsets.fromLTRB(0, 20, 0, 4),
                            child: Column(
                              children: <Widget>[
                                Text('Student Name',
                                    style: Theme.of(context).textTheme.title),
                                Text('Course Info',
                                    style: Theme.of(context).textTheme.subhead)
                              ],
                            )
                        ),
                        Visibility(
                          visible: student,
                          replacement: Padding(
                              padding: new EdgeInsets.only(top: 10),
                              child: MecaFlatButton(
                                  text: 'Update Status',
                                  onPressed:() {
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) => ConsultationForm()
                                      ),);

                                  }
                              )
                          ),
                          child: Padding(
                              padding: new EdgeInsets.only(top: 10),
                              child: MecaFlatButton(
                                  text: 'Request Consultation',
                                  onPressed:() {
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) => ConsultationForm()
                                      ),);

                                  }
                              )
                          ),
                        ),

                      ],
                    )
                )
            ),

            DefaultTabController(
                length: 2,
                child: Column(
                  children: <Widget>[
                    TabBar(
                      indicatorColor: Theme.of(context).primaryColor,
                      tabs: [
                        Tab(icon: Icon(Icons.dashboard,
                            color: Theme.of(context).primaryIconTheme.color)),
                        Tab(icon: Icon(Icons.history,
                            color: Theme.of(context).primaryIconTheme.color))
                      ],
                    ),
                    SizedBox(
                      height: 350,
                      child: TabBarView(
                        children: [
                          ListView(
                            padding: new EdgeInsets.all(10),
                            children: <Widget>[
                              StatusEntry()

                            ],),
                          TableCalendar(
                            calendarController: _calendarController,
                          )
                        ],
                      ),
                    )

                  ],
                )
            )

          ],
        )
    );
  }
}