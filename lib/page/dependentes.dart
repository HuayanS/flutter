import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_teste/services/http_service.dart';
import 'package:flutter_teste/services/login_api.dart';

class DependentesPage extends StatefulWidget {
  @override
  _DependentesPageState createState() => _DependentesPageState();
}

class _DependentesPageState extends State<DependentesPage> {

  Future api() async{

      Map data = await LoginApi().getTokenCPF();

      var dados = await ServiceAPI().getDados('/contratos', data['token'], data['cpf']);

      return dados;
  }

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
      body: Container(
        child: FutureBuilder(
          future: api(),
          builder: (context, snapshot) {
            return snapshot.data != null
                ? Text(snapshot.data[1]['codibene'])
                : Text('');
          },
        ),
      ),
    );
  }
}
