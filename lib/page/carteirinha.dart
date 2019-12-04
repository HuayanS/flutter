import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_teste/services/http_service.dart';
import 'package:flutter_teste/services/login_api.dart';


class CarteirinhaPage extends StatefulWidget {
  @override
  _CarteirinhaPageState createState() => _CarteirinhaPageState();
}

class Contrato {
  int id ;
  String nome;
  Contrato (this.id, this.nome);

  static List<Contrato>getContratos(){
    return<Contrato>[
      Contrato(184675,'Contrato 1'),
      Contrato(265327,'Contrato 2'),
      Contrato(375896,'Contrato 3'),
      Contrato(436954,'Contrato 4'),
      Contrato(515743,'Contrato 5'),
      ];
  }
}

class _CarteirinhaPageState extends State<CarteirinhaPage> {

  var nome = 'a';
  var cpf ;

  void getNome(){
    ServiceAPI.getDados('/beneficiario', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImUyOWQ2ZjhiMjU2MDY1ODA5YzA2Mjk4NzA2NjU3YmIyMzE3NWU0NTU1YzA3MGUyNmU0MTFkODQwYzA4YzY3OGIzOTU5ZGQwZjMzNDY1ZjBmIn0.eyJhdWQiOiIyIiwianRpIjoiZTI5ZDZmOGIyNTYwNjU4MDljMDYyOTg3MDY2NTdiYjIzMTc1ZTQ1NTVjMDcwZTI2ZTQxMWQ4NDBjMDhjNjc4YjM5NTlkZDBmMzM0NjVmMGYiLCJpYXQiOjE1NzQ5NTg2NzIsIm5iZiI6MTU3NDk1ODY3MiwiZXhwIjozMTUyODgxODcyLCJzdWIiOiIiLCJzY29wZXMiOltdfQ.WqYDbH35Zqa4IPnue-0ydTUBfQjSwAKuQ87XBBUt8BzK7uJqEaZGDoqvKL9K8bGPTNtTaZLeOSVdjPzsr1_7K2k2qtKQIHGq-rJ7k92KsryFcpTU31jLkMBkfloTNOwmglYtlOkELBP6tv0VsrT2YAVBZesg1eQUKVAcY2TvhGN33UiuyTeGSvJPWQiRh9Cv_EFx_dbl2bcmHklLP4GbYYAq7unZUFNuzixbgx6twhfH9oMHXNfxqWn0ll5SKOd3qLiNnk_fFkWNDnmoQRQPiG04ggU6itFgpCXIuh7yvAPdWq34rK4-M4L1XGa8fiGbildD-QU5WP5xTze6uKE1Yu8e5Zwsg0ezqzhN9QD4AmBybgClPhk_vAuMQwdaO4Y0nA29GI4t-NKhVXMxvj-PEzw_n9ezQsUKiTe2eNEpyU91l-eWPfP1XTaRPK_JAWNFQnzWL6XHekuLZKyf3jhmadDCNBv3hwcqlerPWsm9qnhHj-BrMYz4DZj6X3X1TffYZ4_TaIaVV4ZpUVudl3fr8nDSTxuYZJENFGEfOeFFMEM1DVQa82fP1y6VBX0479Cdt922nkbf3pXJx-eDRu3u-z9An5gOfPzDL-tsAGrV90DCx0pHkOkhgfXHhZd6dML9SOGbCa_wHxzAnI9uXwD6y_cacWEKpPSuUvhQ49DGUa8', '03720080382').then((response){
      setState(() {
        final bene = json.decode(response);
        this.nome = bene['nomebene'];
        this.cpf = bene['cpfbene'].toString();
        print(this.nome);
      });
    });
  }
  _CarteirinhaPageState(){
    getNome();
  }


  List<Contrato> _contratos = Contrato.getContratos();
  List<DropdownMenuItem<Contrato>> _dropdownMenuItems;
  Contrato _selectContrato;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_contratos);
    _selectContrato = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Contrato>> buildDropdownMenuItems(List contratos){
    List<DropdownMenuItem<Contrato>> items = List ();
    for(Contrato contrato in contratos){
      items.add(DropdownMenuItem(
        value: contrato,
        child: Text(contrato.nome,style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20.0,),),
        ),
        );
    }
    return items;
  }

  onChangeDropdownItem(Contrato selectContrato){
    setState(() {
      _selectContrato = selectContrato;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: new Image.asset("assets/plasa.png",fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 50.0,
              left: 20.0,
              right: 20.0,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('this.nome',textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 30.0,color: Colors.white),
                    ),
                    SizedBox(height: 20.0,
                    ),
                    DropdownButton(
                      value: _selectContrato,
                      items: _dropdownMenuItems,
                      onChanged: onChangeDropdownItem,
                    ),
                    SizedBox(height: 20.0,
                    ),
                    Text('Contrato de Numero:',style: TextStyle(fontSize: 20,color: Colors.white),
                    ),
                    SizedBox(height: 20.0,),
                    Text('Codigo:_____________________000000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.white),),
                    SizedBox(height: 20.0,),
                    Text('this.cpf',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.white),),
                    SizedBox(height: 20.0,),
                    Text('Admissão:______________00/00/0000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.white),),
                  ],
                ),
                width: 200,
                height: 600,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(52),
                    topRight: Radius.circular(52),

                  ),
                ),
              ),
            ),
            SizedBox (
              width: double.infinity,
              height: 200,
              child: Image.asset("assets/person6.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
