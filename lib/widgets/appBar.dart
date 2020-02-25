import 'package:flutter/material.dart';

class DefaultAppBar extends StatefulWidget implements PreferredSizeWidget{

  final double height;
  final String title;

  DefaultAppBar({
    this.height = 60,
    this.title  = "College of Computer Studies"
  });
  Size get preferredSize => Size.fromHeight(height);

  @override
  DefaultAppBarState createState() => DefaultAppBarState();
}

class DefaultAppBarState extends State<DefaultAppBar>
{
  Widget build(BuildContext context)
  {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Theme.of(context).primaryColor,
      title: RichText(
        text: TextSpan(
          style: new TextStyle(
            fontSize: 18
          ),
              children: <TextSpan> [
                new TextSpan(
                  text: widget.title,
                  style: new TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300
                  )
                )
              ]
        )
      )
    );
  }
}

class EmptyAppBar extends StatelessWidget implements PreferredSizeWidget{

  final double height;

  EmptyAppBar({
    this.height = 50,
  });
  Size get preferredSize => Size.fromHeight(height);

  Widget build(BuildContext context)
  {
    return AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent
    );
  }
}