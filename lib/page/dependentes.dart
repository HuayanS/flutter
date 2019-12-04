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





 var bene  = new List<Beneficiario>();

 getDep(){
   ServiceAPI.getDados('/contratos', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImUyOWQ2ZjhiMjU2MDY1ODA5YzA2Mjk4NzA2NjU3YmIyMzE3NWU0NTU1YzA3MGUyNmU0MTFkODQwYzA4YzY3OGIzOTU5ZGQwZjMzNDY1ZjBmIn0.eyJhdWQiOiIyIiwianRpIjoiZTI5ZDZmOGIyNTYwNjU4MDljMDYyOTg3MDY2NTdiYjIzMTc1ZTQ1NTVjMDcwZTI2ZTQxMWQ4NDBjMDhjNjc4YjM5NTlkZDBmMzM0NjVmMGYiLCJpYXQiOjE1NzQ5NTg2NzIsIm5iZiI6MTU3NDk1ODY3MiwiZXhwIjozMTUyODgxODcyLCJzdWIiOiIiLCJzY29wZXMiOltdfQ.WqYDbH35Zqa4IPnue-0ydTUBfQjSwAKuQ87XBBUt8BzK7uJqEaZGDoqvKL9K8bGPTNtTaZLeOSVdjPzsr1_7K2k2qtKQIHGq-rJ7k92KsryFcpTU31jLkMBkfloTNOwmglYtlOkELBP6tv0VsrT2YAVBZesg1eQUKVAcY2TvhGN33UiuyTeGSvJPWQiRh9Cv_EFx_dbl2bcmHklLP4GbYYAq7unZUFNuzixbgx6twhfH9oMHXNfxqWn0ll5SKOd3qLiNnk_fFkWNDnmoQRQPiG04ggU6itFgpCXIuh7yvAPdWq34rK4-M4L1XGa8fiGbildD-QU5WP5xTze6uKE1Yu8e5Zwsg0ezqzhN9QD4AmBybgClPhk_vAuMQwdaO4Y0nA29GI4t-NKhVXMxvj-PEzw_n9ezQsUKiTe2eNEpyU91l-eWPfP1XTaRPK_JAWNFQnzWL6XHekuLZKyf3jhmadDCNBv3hwcqlerPWsm9qnhHj-BrMYz4DZj6X3X1TffYZ4_TaIaVV4ZpUVudl3fr8nDSTxuYZJENFGEfOeFFMEM1DVQa82fP1y6VBX0479Cdt922nkbf3pXJx-eDRu3u-z9An5gOfPzDL-tsAGrV90DCx0pHkOkhgfXHhZd6dML9SOGbCa_wHxzAnI9uXwD6y_cacWEKpPSuUvhQ49DGUa8', '03720080382').then((response){
     setState(() {
       Iterable lista = json.decode(response);
       bene = lista.map((model)=> Beneficiario.teste(model)).toList();
     });
   });
 }

 _DependentesPageState(){
   getDep();
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Image.asset("assets/plasa.png", fit: BoxFit.cover,),
          centerTitle: true,
        ),
        body: listaDependentes(context),

    );
  }

  Widget listaDependentes(BuildContext context) {
    return ListView.builder(
      itemCount: bene.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              bene[index].dataadmi.toString()
            ),
          );
        }
    );
  }

}
