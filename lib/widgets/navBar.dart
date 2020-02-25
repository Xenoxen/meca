import 'package:flutter/material.dart';
import 'package:meca/views/crequests.dart';
import 'package:meca/views/facultylist.dart';
import 'package:meca/views/profile.dart';
import 'package:meca/views/notifications.dart';
import 'package:meca/views/menu.dart';

class StudentNavBar extends StatefulWidget {

  StudentNavBar({
    this.index = 0,
    Key key
  }) : super(key: key);
  int index;
  @override
  StudentNavBarState createState() => StudentNavBarState();
}

class StudentNavBarState extends State<StudentNavBar>
{
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final PageStorageBucket bucket = PageStorageBucket();

  void initState()
  {
    super.initState();
    _selectedIndex = widget.index;
  }
  void setIndex(int index)
  {
    this._selectedIndex = index;
  }
  final List<Widget> pages = <Widget>[

    FacultyListView(
        key: PageStorageKey('faculty')
    ),
    NotificationsView(
        key: PageStorageKey('notifications')
    ),
    SettingsView(
      key: PageStorageKey('settings')
    )

  ];

  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: navBar(_selectedIndex),
        body: PageStorage(
          child: pages[_selectedIndex],
          bucket: bucket,
        )
    );
  }

  Widget navBar(int index)
  {
    return ClipRRect(
        child: new Theme(
            data: Theme.of(context).copyWith(
                textTheme: Theme.of(context).primaryTextTheme,
                primaryColor: Colors.white,
                canvasColor: Theme.of(context).primaryColor),
            child: new BottomNavigationBar(
              onTap: (int index) => setState(() => _selectedIndex = index),
              currentIndex: _selectedIndex,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Faculty List')),
                BottomNavigationBarItem(icon: Icon(Icons.notifications), title: Text('Notifications')),
                BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text('Settings')),
              ],
            )
        )
    );
  }
}

class FacultyNavBar extends StatefulWidget {

  FacultyNavBar({
    this.index = 0,
    Key key
  }) : super(key: key);
  int index;
  @override
  FacultyNavBarState createState() => FacultyNavBarState();
}

class FacultyNavBarState extends State<FacultyNavBar>
{
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final PageStorageBucket bucket = PageStorageBucket();

  void initState()
  {
    super.initState();
    _selectedIndex = widget.index;
  }
  void setIndex(int index)
  {
    this._selectedIndex = index;
  }
  final List<Widget> pages = <Widget>[

    ConsultationRequestsView(
        key: PageStorageKey('requests')
    ),
    NotificationsView(
        key: PageStorageKey('notifications')
    ),
    SettingsView(
        key: PageStorageKey('settings')
    )

  ];

  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: navBar(_selectedIndex),
        body: PageStorage(
          child: pages[_selectedIndex],
          bucket: bucket,
        )
    );
  }

  Widget navBar(int index)
  {
    return ClipRRect(
        child: new Theme(
            data: Theme.of(context).copyWith(
                textTheme: Theme.of(context).primaryTextTheme,
                primaryColor: Colors.white,
                canvasColor: Theme.of(context).primaryColor),
            child: new BottomNavigationBar(
              onTap: (int index) => setState(() => _selectedIndex = index),
              currentIndex: _selectedIndex,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.inbox), title: Text('Requests')),
                BottomNavigationBarItem(icon: Icon(Icons.notifications), title: Text('Notifications')),
                BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text('Menu')),
              ],
            )
        )
    );
  }
}