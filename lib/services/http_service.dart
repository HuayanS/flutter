import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' as convert;
import 'package:flutter_teste/services/login_api.dart';

class ServiceAPI{

  static Future getDados( rota, token, cpf) async{

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

    return await http.get(url+dados);
  }

}
const baseUrl="http://plasa.develapi.gruponobre.com";

class API {
  static Future getBeneficiario()async{
    var url =baseUrl+"/beneficiario";
    return await http.get(url);
  }
}