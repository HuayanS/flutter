import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' as convert;
import 'package:flutter_teste/services/login_api.dart';

class ServiceAPI{

  static Future getDados( String rota ) async{

    var access_token = await LoginApi.getTokenApi();
    var cpf = await LoginApi.getUserCpf();
    var url = 'http://plasa.develapi.gruponobre.com/'+ rota +'?id=03720080382';
    String body = '{"id": "03720080382"}';
    print(access_token);
    Map<String, String> headers = {
      'Content-type' : 'application/json',
      'Accept': '*/*',
      'Authorization' : 'Bearer' + access_token,
      'Cache-Control' : 'no-cache',
    };

    var response = await http.get(url, headers: headers);
    int statusCode = response.statusCode;
    print(statusCode);



  }

}