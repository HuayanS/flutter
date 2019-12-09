import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_teste/services/http_service.dart';
import 'package:flutter_teste/services/login_api.dart';

class DependentesPage extends StatefulWidget {
  @override
  _DependentesPageState createState() => _DependentesPageState();
}

class _DependentesPageState extends State<DependentesPage> {
  String contrato = '417844';

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
      body: Column(children: [
        FutureBuilder(
          future: ServiceAPI().getDados('/contratos'),
          builder: (context, snapshot) {
            return snapshot.data != null
                ? DropdownButton<String>(
                    value: contrato,
                    onChanged: (String newValue) {
                      setState(() {
                        contrato = newValue;
                      });
                    },
                    items: <String>['417844', '415072', '417847', '426484']
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
        ListaAPI('/dependentes', contrato),
      ]),
    );
  }
}

class ListaAPI extends StatelessWidget {
  String url;
  String contrato;

  ListaAPI(this.url, this.contrato);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: FutureBuilder(
            future: ServiceAPI().getDados(url, codibene: contrato),
            builder: (context, snapshot) {
              return snapshot.data != null
                  ? ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, i) {
                        return Text(snapshot.data[i]['codidepe']);
                      },
                    )
                  : Text('');
            }));
  }
}
