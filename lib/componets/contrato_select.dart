import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_teste/services/http_service.dart';

class ContratoSelect extends StatefulWidget {
  @override
  _ContratoSelect createState() => _ContratoSelect();
}

class _ContratoSelect extends State<ContratoSelect> {
  String selectedContrato = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FutureBuilder(
          future: ServiceAPI().getDados('/contratos'),
          builder: (context, snapshot) {
            List<String> contratos = [];

            if (snapshot.connectionState == ConnectionState.done) {
              snapshot.data.forEach((x) => contratos.add(x['codibene']));
            }

            return snapshot.connectionState == ConnectionState.done
                ? DropdownButton<String>(
              value: selectedContrato == '' ? null : selectedContrato,
              hint: Text('Escolha um contrato'),
              onChanged: (String novoContrato) {
                setState(() {
                  selectedContrato = novoContrato;
                });
              },
              items:
              contratos.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )
                : CircularProgressIndicator();
          },
        ),
        ListaAPI('/dependentes', selectedContrato),
      ],
    );
  }
}

class ListaAPI extends StatelessWidget {
  String url;
  String contrato;

  ListaAPI(this.url, this.contrato);

  String formatData(String data) {
    var b = data.split('-');
    var a = b[2].split(' ');
    return a[0] + '/' + b[1] + '/' + b[0];
  }

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
              return SizedBox(
                child: Card(

                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                        children: [
                      Wrap(
                        spacing: 30,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                snapshot.data[i]['codidepe'],
                                style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                snapshot.data[i]['nomedepe'],
                                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[

                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  formatData(snapshot.data[i]['datacare']),
                                  style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          )
                        ],
                      ),

                    ]),
                  ),
                ),
              );
            },
          )
              : Text('');
        },
      ),
    );
  }
}
