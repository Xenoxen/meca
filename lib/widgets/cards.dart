import 'package:flutter/material.dart';
import 'package:meca/views/profile.dart';

class Faculty extends StatelessWidget{

  Faculty({
    Key key,
    @required this.id,
});
  int id;

  Widget build(BuildContext context)
  {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(context,
            MaterialPageRoute(
                builder: (context) => FacultyProfile(id: this.id)
            ),);
        },
        title: Text('Faculty Member Name',
        style: Theme.of(context).primaryTextTheme.title),
          subtitle: Text('Faculty Member Position',
              style: Theme.of(context).primaryTextTheme.subtitle),
        leading: Hero(
          tag: 'facultyProfile-$id',
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/m.jpg')
          )
        )
      )
    );
  }
}

class NotificationEntry extends StatelessWidget{

  NotificationEntry({
    Key key,
    @required this.title,
    @required this.subtitle,

  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context)
  {
    return Card(
        child: ListTile(
            onTap: () {

            },
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/m.jpg'),
            ),
            title: Text(title,
                style: Theme.of(context).primaryTextTheme.title),
            subtitle: Text(subtitle,
                style: Theme.of(context).primaryTextTheme.subtitle),
        )
    );
  }
}

class StatusEntry extends StatelessWidget {

  final String message;
  final String timestamp;

  StatusEntry({
    @required this.message,
    @required this.timestamp,
});

Widget build(BuildContext context){
  return Container(
      margin: new EdgeInsets.fromLTRB(4, 2, 4, 2),
      color: Colors.grey[100],
      child: ListTile(
          title: Text('Feed Message',
              style: new TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              )),
          subtitle: Text('Feed Timestamp',
              style: new TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black
              )),
          leading: Icon(Icons.brightness_1,
            color: Colors.green[600],
            size: 30,)
      )
  );
}
}

class RequestEntry extends StatelessWidget {
  final String title;
  final String timestamp;

  RequestEntry({
    @required this.title,
    @required this.timestamp,
  });
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      child: ListTile(
        title: Text(title,
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black
        )),
        subtitle: Text(timestamp)
      )
    );
  }
}

class HistoryEntry extends StatelessWidget {
  final String title;
  final String timestamp;
  final int status;

  HistoryEntry({
    @required this.title,
    @required this.timestamp,
    @required this.status
  });
  Widget build(BuildContext context){
    return Container(
        color: Colors.white,
        child: ListTile(
            title: Text(title,
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black
                )),
            subtitle: Text(timestamp),
            leading: Icon(Icons.brightness_1,
              color: Colors.green[600],
              size: 30,)
        )
    );
  }
}