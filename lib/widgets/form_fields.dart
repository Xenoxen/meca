import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class MecaTextField extends StatelessWidget {

  final String placeholder;
  final Color color;
  final TextInputType keyboard;
  final bool obscure;
  bool enabled;
  final TextEditingController controller;
  Function onChanged  = (value) {};
  Function onTap = (value) {};
  Function valid = (value) {
    return null;
  };
  //final String validator;

  MecaTextField({
    @required this.placeholder,
    this.color = Colors.white,
    @required this.controller,
    this.keyboard,
    this.obscure = false,
    this.onChanged,
    this.enabled = true,
    this.valid,
    this.onTap
  });

  FocusNode node = new FocusNode();
  Widget build(BuildContext context)
  {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 3.0, 0, 3.0),
        child: TextFormField(
          focusNode: node,
          enabled: enabled,
          onTap: onTap,
          onChanged: onChanged,
          controller: controller,
          obscureText: obscure,
          style: Theme.of(context).primaryTextTheme.body1,
          keyboardType: keyboard,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              focusColor: Colors.blue,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey[200]
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              labelText: placeholder,
              labelStyle: TextStyle(
                color: Colors.grey,
              ),
              border: InputBorder.none
          ),
        )
    );
  }
}

class MecaTextArea extends StatelessWidget
{

  final String placeholder;
  final Color color;
  final TextInputType keyboard;
  final bool obscure;
  int lines;
  bool enabled;
  final TextEditingController controller;
  Function onChanged  = (value) {};
  Function onTap = (value) {};
  Function valid = (value) {
    return null;
  };
  //final String validator;

  MecaTextArea({
    @required this.placeholder,
    this.color = Colors.white,
    @required this.controller,
    this.keyboard,
    this.lines = 4,
    this.obscure = false,
    this.onChanged,
    this.enabled = true,
    this.valid,
    this.onTap
  });

  FocusNode node = new FocusNode();
  Widget build(BuildContext context)
  {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 3.0, 0, 3.0),
        child: TextFormField(
            maxLines: lines,
            focusNode: node,
            enabled: enabled,
            onTap: onTap,
            onChanged: onChanged,
            controller: controller,
            obscureText: obscure,
            style: Theme.of(context).primaryTextTheme.body1,
            keyboardType: keyboard,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                focusColor: Colors.blue,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey[100]
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),
                labelText: placeholder,
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: InputBorder.none
            ),
            validator: this.valid
        )
    );
  }
}

class DropdownBtn extends StatefulWidget {
  DropdownBtn({Key key,
    @required this.placeholder,
    @required this.items,
    this.secondItems,
    @required this.controller,
    this.value,
  }) : super(key: key);

  final String placeholder;
  final List <String> secondItems;
  final List <String> items;
  String value;
  final TextEditingController controller;

  @override
  DropdownState createState() => DropdownState();
}

class DropdownState extends State<DropdownBtn>
{

  String dropdownValue;

  @override
  Widget build(BuildContext context)
  {

    return Container(
        margin: const EdgeInsets.fromLTRB(0, 5.0, 0, 8.0),
        alignment: Alignment(1,0),
        width: 400,
        height: 60,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
          color: Colors.grey[200],
        ),
        padding: new EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
        child: new DropdownButton<String>(
          hint: Text(widget.placeholder),
          isExpanded: true,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          value: dropdownValue,
          elevation: 16,
          style: Theme.of(context).textTheme.body1,
          underline: Container(
            height: 0,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
              widget.value = newValue;
            });
          },
          items: widget.items
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        )
    );
  }
}