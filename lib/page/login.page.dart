import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_teste/page/home.page.dart';
import 'package:flutter_teste/services/login_api.dart';


class LoginPage extends StatelessWidget {

  String _validaCpf(String cpf){
    if(cpf.isEmpty){
      return "Digite CPF";
    }
    return null;
  }

  String _validaData(String data){
    if(data.isEmpty){
      return "Digite sua data de nascimento";
    }
  }

  void _clickButton(BuildContext context) async {
    bool formOk =_formKey.currentState.validate();

    if(!formOk){
      return;
    }
    String cpf = _ctrlCpf.text;
    String data = _ctrlData.text;

    print ("cpf:$cpf data:$data");

    var response = await LoginApi.login(cpf, data);
    if(response) {
      _navegaHomepage(context);
    }
  }

  _navegaHomepage(BuildContext context){
    Navigator.push(context, MaterialPageRoute(
      builder: (context)=> HomePage()
    ));
  }

  final _ctrlCpf = TextEditingController();
  final _ctrlData = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/plasa.png"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _ctrlCpf,
              validator: _validaCpf,
              autofocus: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
              labelText: "CPF",
              labelStyle: TextStyle(
              color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _ctrlData,
              validator: _validaData,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                labelText: "Data de Nascimento",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3,1],
                  colors: [
                    Color(0xFFFFA726),
                    Color(0XFFFFB74D),
                  ],
                ),
                borderRadius: BorderRadius.all
                  (Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Entrar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 20,
                      ),
                      ),
                      Container(
                        child: SizedBox(
                          //child: Image.asset(),
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ],
                  ),
                  onPressed: ()=>{
                    _clickButton(context)
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );



  }
}
