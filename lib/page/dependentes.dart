import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_teste/services/http_service.dart';

class DependentesPage extends StatefulWidget {
  @override
  _DependentesPageState createState() => _DependentesPageState();
}

class _DependentesPageState extends State<DependentesPage> {
  var dados = ServiceAPI();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:Text('dsas'),
        centerTitle: true,
      ),
      body: Container(
        child: FutureBuilder(
          future: dados.getDados('/beneficiario',dados.info['token'],dados.info['cpf']),
          builder: (context, snapshot) {
            return snapshot.data != null
                ? Text(snapshot.data['nomebene'])
                : Text('');
          },
        ),
      ),
    );
  }
}
