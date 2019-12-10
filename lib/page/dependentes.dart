import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_teste/services/http_service.dart';
import 'package:flutter_teste/services/login_api.dart';

class DependentesPage extends StatefulWidget {
  @override
  _DependentesPageState createState() => _DependentesPageState();
}

class _DependentesPageState extends State<DependentesPage> {
  String contratoSelec = '';

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
            List<String> contratos = [];

            if(snapshot.connectionState == ConnectionState.done) {
              snapshot.data.forEach((x) => contratos.add(x['codibene']));
            }

            return snapshot.connectionState == ConnectionState.done
                ? DropdownButton<String>(
                    value: contratoSelec == '' ? null : contratoSelec,
                    hint: Text('Escolha um contrato'),
                    onChanged: (String novoContrato) {
                      setState(() {
                        contratoSelec = novoContrato;
                      });
                    },//jtyjyj
                    items: contratos.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )
                : CircularProgressIndicator();
          },
        ),
        ListaAPI('/dependentes', contratoSelec),
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
                        return Text(snapshot.data[i]['nomedepe']);
                      },
                    )
                  : Text('');
            }));
  }
}
