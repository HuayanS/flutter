import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' as convert;
import 'package:flutter_teste/services/login_api.dart';

class ServiceAPI {
  final String baseUrl = "http://plasa.develapi.gruponobre.com";
  var info = {};

  Future getDados(String rota,String token, String cpf) async{

    var url = baseUrl + rota +'?id='+ cpf;

    Map<String, String> headers = {
      'Content-type' : 'application/json',
      'Accept': '*/*',
      'Authorization' : 'Bearer ' + token,
      'Cache-Control' : 'no-cache',
    };

    var response = await http.get(url, headers: headers);

    return json.decode(response.body);
  }

}
