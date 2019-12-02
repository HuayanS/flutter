import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_teste/models/beneficiarioToJson.dart';
import 'package:flutter_teste/models/teste.dart';
import 'package:flutter_teste/services/http_service.dart';
import 'package:http/http.dart' as http;

class DependentesPage extends StatefulWidget {
  @override
  _DependentesPageState createState() => _DependentesPageState();
}

class _DependentesPageState extends State<DependentesPage> {

 var nome  = new List<Beneficiario>();

 getNome(){
   ServiceAPI.getDados(rota, token, cpf ).then((response){
     setState(() {
       Iterable lista = json.decode(response.body);
       nome = lista.map((model)=> Beneficiario.fromJson(model)).toList();
     });
   });
 }

 _DependentesPageState(){
   getNome();
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Image.asset("assets/plasa.png", fit: BoxFit.cover,),
          centerTitle: true,
        ),
        body: listaDependentes(context)
    );
  }

  Widget listaDependentes(BuildContext context) {
    return ListView.builder(
      itemCount: nome.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              [index].nomebene,
            ),
          );
        }
    );
  }

}
