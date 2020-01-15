import 'package:flutter/material.dart';

class CheckList extends StatefulWidget {
  @override
  _CheckListState createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  Map<String, bool> values = {
    "JavaScripes": false,
    "PHP": false,
    "Java" :false,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("List check"),
      ),
      body: ListView(
        children:values.keys.map((String key){
          return CheckboxListTile(
            title: Text(key),
            value: values[key],//get key and value = false
            onChanged: (bool value){//if value true we can text
              setState(() {
                values[key] = value;
              });
            },
          );
        }).toList(),
       ),

    );
  }
}