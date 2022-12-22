import 'package:flutter/material.dart';
import 'package:event_calendar_week2/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> _list=[];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor:Color.fromRGBO(152,141,221, 1),
        appBar: AppBar(
          title:Text('Event Scheduler'),
          centerTitle: false,
          backgroundColor: Color.fromRGBO(75,57,186, 1),
        ),
        body:ListView.builder(

          itemCount: _list.length,
          itemBuilder:(context, index) {
            return Container(
              width:300,
              padding:EdgeInsets.symmetric(horizontal:15,vertical:15),
              margin:EdgeInsets.all(10),
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(4),
                ),
                child:Center(
                  child:Text(_list[index].toString(),textAlign: TextAlign.center,
            )
            )
            );
          }
          ),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              backgroundColor:Color.fromRGBO(75,57,186, 1),
              child:Icon(Icons.add),
              onPressed: () async{
                String res=await Navigator.push(context,MaterialPageRoute(builder:(context)=>add()));
                setState(() {
                  _list.add(res);
                });
              },
            );
          }
        ),
        )
    );
  }
}