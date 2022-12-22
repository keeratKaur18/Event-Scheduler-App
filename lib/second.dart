import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

class add extends StatefulWidget {
  @override
  State<add> createState() => _add();
}

class _add extends State<add> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:const Color.fromRGBO(152, 141, 221, 1),
        appBar: AppBar(
          backgroundColor:const Color.fromRGBO(75, 57, 186, 1),
          title: const Text('New Event'),
          centerTitle: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: TextField(
                controller: _textEditingController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(90),
                      )),
                  contentPadding: EdgeInsets.symmetric(vertical: 18,),
                  prefixIcon: Icon(Icons.calendar_month, color: Colors.white),
                  fillColor: Color.fromRGBO(75, 57, 186, 1),
                  filled: true,
                  labelText: 'Event',
                  labelStyle: TextStyle(color: Colors.white),
                ),
                maxLines: null,
              ),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white54,
                minimumSize: Size(350,50),
               // padding:const EdgeInsets.symmetric(horizontal: 160, vertical: 18),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              onPressed: () {
                String newText=_textEditingController.text;
                Navigator.of(context).pop(newText);
              },
              child: const Text('ADD'),
            )
          ],
        ));
  }
}
