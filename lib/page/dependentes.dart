import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_teste/services/http_service.dart';
import 'package:flutter_teste/services/login_api.dart';

class DependentesPage extends StatefulWidget {
  @override
  _DependentesPageState createState() => _DependentesPageState();
}

class _DependentesPageState extends State<DependentesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Image.asset(
          "assets/plasa.png",
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      body: Row(children: [
        FutureBuilder(
          future: ServiceAPI().getDados('/dependentes', codibene: '417844'),
          builder: (context, snapshot) {
            return snapshot.data != null
                ? DropdownButton<String>(
                    value: dropdownValue,
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['One', 'Two', 'Free', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )
                : Text('das');
          },
        ),
        FutureBuilder(
          future: ServiceAPI().getDados('/dependentes', codibene: '417844'),
          builder: (context, snapshot) {
            return snapshot.data != null
                ? ListView.builder(
                    itemCount: snapshot.data.length - 1,
                    itemBuilder: (context, i) {
                      return Text(snapshot.data[i].toString());
                    },
                  )
                : Text('');
          },
        ),
      ]),
    );
  }
}
