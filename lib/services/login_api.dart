
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' as convert;
import 'package:shared_preferences/shared_preferences.dart';


class LoginApi{
   static Future getAuth( String cpf, String data) async{
    var url = 'http://plasa.develapi.gruponobre.com/teste';
    var response = await http.post(url, body: {'cpfbene': cpf, 'datanasc': data});

    if(convert.jsonDecode(response.body) == true){
      getToken(cpf);
      return true;
    }else{
      return false;
    }

  }


  static getToken(String cpf) async {
    SharedPreferences.setMockInitialValues({});

    SharedPreferences prefs = await SharedPreferences.getInstance();

    var url = 'http://plasa.develapi.gruponobre.com/oauth/token';
    var response = await http.post(url, body: {
      'grant_type' : 'client_credentials',
      'client_id' : '2',
      'client_secret' : 'mhjznHv3PTNQWWSLzkzox8eOT0tUxUKE8pKEWr6u',
      'scope' : ''
    });
    var token = convert.jsonDecode(response.body);

    prefs.setString("api_token", token.toString());
    prefs.setString("cpf", cpf);

  }

   static getTokenApi() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();

    var token = (prefs.getString('api_token'));

    return token.toString();
  }

   static getUserCpf() async {

     SharedPreferences prefs = await SharedPreferences.getInstance();

     var token = (prefs.getString('cpf'));

     return token.toString();
   }

}



