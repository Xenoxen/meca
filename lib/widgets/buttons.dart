import 'package:flutter/material.dart';

class MecaFlatButton extends StatelessWidget{

  final String text;
  final Color color;
  final Function onPressed;
  MecaFlatButton({
    this.color = Colors.white,
    @required this.text,
    @required this.onPressed
  });

  Widget build(BuildContext context)
  {
    return FlatButton(
      child: Padding(
        padding: new EdgeInsets.fromLTRB(0, 15, 0, 15),
        child: Text(text,
          style: Theme.of(context).textTheme.button
        )
      ),
      onPressed: onPressed,
      color: color,
    );
  }
}
class MecaFlatButtonCustom extends StatelessWidget{
  final String text;
  final String image;
  final Function onPressed;
  MecaFlatButtonCustom({
    @required this.text,
    @required this.image,
    @required this.onPressed
});
  Widget build(BuildContext context)
  {

    return FlatButton(
      onPressed: onPressed,
      color: Colors.white,
      child: Padding(
        padding: new EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(image,
            width: 30,
            height: 30),
            Text(text, style: Theme.of(context).primaryTextTheme.button)
          ],
        )
      )
    );
  }
}

class MecaFlatButtonIcon extends StatelessWidget{
  final String text;
  final IconData icon;
  final Function onPressed;
  MecaFlatButtonIcon({
    @required this.text,
    @required this.icon,
    @required this.onPressed
  });
  Widget build(BuildContext context)
  {

    return FlatButton(
        onPressed: onPressed,
        color: Colors.white,
        child: Padding(
            padding: new EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: new EdgeInsets.only(right: 20),
                  child: Icon(icon),
                ),

                Text(text)
              ],
            )
        )
    );
  }
}