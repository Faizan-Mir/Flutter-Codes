import 'package:flutter/material.dart';

void main(){
runApp(new MaterialApp(
  home : new MyApp(),
));
}

class MyApp extends StatefulWidget{
 @override
  _State createState() => _State();
}

class _State extends State<MyApp>{
  bool _value1 = false;
  bool _value2 = false;

  void _value1Changed(bool? value) => setState(() => _value1 = value!);
  void _value2Changed(bool? value) => setState(() => _value2 = value!);



  @override
  Widget build(BuildContext content){

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name Here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Checkbox(value: _value1, onChanged: _value1Changed),
              new CheckboxListTile(
                  value: _value2,
                  onChanged: _value2Changed,
                  title: new Text('Hello World'),
                controlAffinity: ListTileControlAffinity.leading,
                subtitle: new Text("How are you doing"),
                secondary: new Icon(Icons.alarm_on_rounded),
                activeColor: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
