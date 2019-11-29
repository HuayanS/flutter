import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' as convert;
import 'package:flutter_teste/services/login_api.dart';

class ServiceAPI{

  static Future getDados( String rota, String token, String cpf) async{

    var url = 'http://plasa.develapi.gruponobre.com/'+ rota +'?id='+cpf;
    String body = '{"id": "03720080382"}';
    Map<String, String> headers = {
      'Content-type' : 'application/json',
      'Accept': '*/*',
      'Authorization' : 'Bearer ' + token,
      'Cache-Control' : 'no-cache',
    };

    var response = await http.get(url, headers: headers);

    var dados = convert.jsonDecode(response.body);

    return dados;
  }

}