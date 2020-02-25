import 'package:flutter/material.dart';
import 'package:meca/widgets/appBar.dart';
import 'package:meca/widgets/cards.dart';

class NotificationsView extends StatefulWidget {

  NotificationsView({Key key}):super(key: key);
  @override
  NotificationsViewState createState() => NotificationsViewState();
}

class NotificationsViewState extends State<NotificationsView> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Notifications'
      ),
      body: ListView(
        padding: new EdgeInsets.all(8),
        children: <Widget>[
          NotificationEntry(title: 'New Consultation Request', subtitle: 'Ya Boi Frolyn requests for a consultation.'),
          NotificationEntry(title: 'Consultation Event Cancelled', subtitle: 'Ya Boi Frolyn cancelled your consultation request.'),
        ],
      )
    );
  }
}