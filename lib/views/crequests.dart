import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:meca/widgets/appBar.dart';
import 'package:meca/widgets/cards.dart';

class ConsultationRequestsView extends StatefulWidget{

  ConsultationRequestsView({Key key}): super(key: key);
  @override
  ConsultationRequestsViewState createState() => ConsultationRequestsViewState();
}

class ConsultationRequestsViewState extends State<ConsultationRequestsView> {

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'CONSULTATION REQUESTS'
      ),
      body: ListView(
        children: <Widget>[
          DefaultTabController(
              length: 2,
              child: Column(
                children: <Widget>[
                  TabBar(
                    indicatorColor: Theme.of(context).primaryColor,
                    tabs: [
                      Tab(icon: Icon(Icons.mail,
                          color: Theme.of(context).primaryIconTheme.color)),
                      Tab(icon: Icon(Icons.history,
                          color: Theme.of(context).primaryIconTheme.color)),
                    ],
                  ),
                  SizedBox(
                    height: 350,
                    child: TabBarView(
                      children: [
                        ListView(
                          padding: new EdgeInsets.all(10),
                          children: <Widget>[
                            RequestEntry(title: 'Capstone Concern', timestamp: 'Frolyn M. Raguindin - 2/15/2020'),
                            RequestEntry(title: 'Capstone Concern', timestamp: 'Frolyn M. Raguindin - 2/15/2020'),

                          ],
                        ),
                        ListView(
                          padding: new EdgeInsets.all(10),
                          children: <Widget>[
                            HistoryEntry(title: 'Capstone', timestamp: 'Jazz Salcedo - 2-4-2020', status: null),
                            HistoryEntry(title: 'Capstone', timestamp: 'Jazz Salcedo - 2-4-2020', status: null)
                          ],
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

class ConsultationRequestDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: ListView(

      )
    );
  }
}