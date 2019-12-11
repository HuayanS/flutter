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
    return FutureBuilder(
      future: ServiceAPI().getDados('/contratos'),
      builder: (context, snapshot) {
        List<String> contratos = [];

        if (snapshot.connectionState == ConnectionState.done) {
          snapshot.data.forEach((x) => contratos.add(x['codibene']));
          if (selectedContrato == '') selectedContrato = contratos[0];
        }

        return snapshot.connectionState == ConnectionState.done
            ? Column(
                children: <Widget>[
                  Container(
                    child: DropdownButton<String>(
                      value: selectedContrato,
                      hint: Text('Escolha um contrato'),
                      onChanged: (String novoContrato) {
                        setState(() {
                          selectedContrato = novoContrato;
                        });
                      },
                      items: contratos
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    child: Card(
                      margin: EdgeInsets.fromLTRB(0,1,0,1),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                              spacing: 20,
                              children: [
                                infoCard('Código', 15.0),
                                infoCard('Nome do Dependente', 15.0),
                              ],
                            ),
                            infoCard('Data de Carência', 15.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ListaAPI('/dependentes', selectedContrato),
                ],
              )
            : Text('');
      },
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

  Widget infoTexto(List lista, int i) {
    if (lista != null) {
      if (lista[i]['datafale'] != null) {
        return infoCardFal(formatData(lista[i]['datafale']));
      } else
        return infoCard(formatData(lista[i]['datacare']), 12.0);
    } else
      return Text('');
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
                        margin: EdgeInsets.fromLTRB(0,1,0,1),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Wrap(
                                spacing: 40,
                                children: [
                                  infoCard(snapshot.data[i]['codidepe'], 12.0),
                                  infoCard(snapshot.data[i]['nomedepe'], 12.0),
                                ],
                              ),
                              infoTexto(snapshot.data, i),
                            ],
                          ),
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

class infoCardFal extends StatelessWidget {
  String dado;

  infoCardFal(this.dado);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.add,
          color: Colors.pink,
          size: 24.0,
          semanticLabel: 'Cruz',
        ),
        Text(
          dado,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
          ),
        ),
      ],
    );
  }
}

class infoCard extends StatelessWidget {
  String dado;
  double fontSize;

  infoCard(this.dado, this.fontSize);

  @override
  Widget build(BuildContext context) {
    return Text(
      dado,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
