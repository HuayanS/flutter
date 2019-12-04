import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_teste/componets/horizontal_listview.dart';
import 'package:flutter_teste/componets/horizontal_listview2.dart';
import 'package:flutter_teste/models/teste.dart';
import 'package:flutter_teste/page/carteirinha.dart';
import 'package:flutter_teste/page/cobranca.dart';
import 'package:flutter_teste/page/dependentes.dart';
import 'package:flutter_teste/page/login.page.dart';
import 'package:flutter_teste/page/pagamentos.dart';
import 'package:flutter_teste/page/postomo.dart';
import 'package:flutter_teste/services/http_service.dart';
import 'package:flutter_teste/services/login_api.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var nome = 'a';


  void getNome(){
    ServiceAPI.getDados('/beneficiario', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImUyOWQ2ZjhiMjU2MDY1ODA5YzA2Mjk4NzA2NjU3YmIyMzE3NWU0NTU1YzA3MGUyNmU0MTFkODQwYzA4YzY3OGIzOTU5ZGQwZjMzNDY1ZjBmIn0.eyJhdWQiOiIyIiwianRpIjoiZTI5ZDZmOGIyNTYwNjU4MDljMDYyOTg3MDY2NTdiYjIzMTc1ZTQ1NTVjMDcwZTI2ZTQxMWQ4NDBjMDhjNjc4YjM5NTlkZDBmMzM0NjVmMGYiLCJpYXQiOjE1NzQ5NTg2NzIsIm5iZiI6MTU3NDk1ODY3MiwiZXhwIjozMTUyODgxODcyLCJzdWIiOiIiLCJzY29wZXMiOltdfQ.WqYDbH35Zqa4IPnue-0ydTUBfQjSwAKuQ87XBBUt8BzK7uJqEaZGDoqvKL9K8bGPTNtTaZLeOSVdjPzsr1_7K2k2qtKQIHGq-rJ7k92KsryFcpTU31jLkMBkfloTNOwmglYtlOkELBP6tv0VsrT2YAVBZesg1eQUKVAcY2TvhGN33UiuyTeGSvJPWQiRh9Cv_EFx_dbl2bcmHklLP4GbYYAq7unZUFNuzixbgx6twhfH9oMHXNfxqWn0ll5SKOd3qLiNnk_fFkWNDnmoQRQPiG04ggU6itFgpCXIuh7yvAPdWq34rK4-M4L1XGa8fiGbildD-QU5WP5xTze6uKE1Yu8e5Zwsg0ezqzhN9QD4AmBybgClPhk_vAuMQwdaO4Y0nA29GI4t-NKhVXMxvj-PEzw_n9ezQsUKiTe2eNEpyU91l-eWPfP1XTaRPK_JAWNFQnzWL6XHekuLZKyf3jhmadDCNBv3hwcqlerPWsm9qnhHj-BrMYz4DZj6X3X1TffYZ4_TaIaVV4ZpUVudl3fr8nDSTxuYZJENFGEfOeFFMEM1DVQa82fP1y6VBX0479Cdt922nkbf3pXJx-eDRu3u-z9An5gOfPzDL-tsAGrV90DCx0pHkOkhgfXHhZd6dML9SOGbCa_wHxzAnI9uXwD6y_cacWEKpPSuUvhQ49DGUa8', '03720080382').then((response){
      setState(() {
        final bene = json.decode(response);
        this.nome = bene['redubene'];
      });
    });
  }

  _HomePageState(){
    getNome();
  }

  Widget image_slider_carousel = Container(
    height: 300,
    child: Carousel(
      images: [
        AssetImage( 'assets/image-1.png'),
        AssetImage( 'assets/image-2.png'),
        AssetImage( 'assets/image-3.png'),
      ],
      autoplay: true,
      indicatorBgPadding: 1.0,

    ),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[

          image_slider_carousel,

          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Categorias',textAlign: TextAlign.center,),
          ),
          //horizontal teste aqui
          HorizontalList(),
          new Padding(padding: const EdgeInsets.all(20.0),
          ),
          Container(
            height: 320.0,
            child: HorizontalList2(),
          ),
        ],
      ),
      appBar: new AppBar(
        title: Image.asset('assets/plasa.png',fit: BoxFit.cover),

        centerTitle: true,
      ),

      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(this.nome),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('https://picsum.photos/250?image=9',),
              ),
            ),

            new ListTile(
              title: new Text('Carteirinha'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute
                  (builder: (BuildContext context) => new CarteirinhaPage()));
              },

            ),

            new Divider(
              color: Colors.black,
            ),
            new ListTile(
              title: new Text('Dependentes'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute
                  (builder: (BuildContext context) => new DependentesPage()));
              },
            ),
            new Divider(
              color: Colors.black,

            ),
            new Divider(
              color: Colors.black,

            ),
            new ListTile(
              title: new Text('Pagamentos'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute
                  (builder: (BuildContext context) => new PagamentosPage()));
              },
            ),
            new Divider(
              color: Colors.black,
            ),
            new Divider(
              color: Colors.black,
            ),

            new ListTile(
              title: new Text('Cobrança'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute
                  (builder: (BuildContext context) => new CobrancaPage()));
              },
            ),

            new Divider(
              color: Colors.black,
            ),
            new ListTile(
              title: new Text('Postomo'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute
                  (builder: (BuildContext context) => new PostomoPage()));
              },
            ),
            new Divider(
              color: Colors.black,
            ),
            new ListTile(
              title: new Text('Sair'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute
                  (builder: (BuildContext context) => new LoginPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
