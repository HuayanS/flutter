import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_teste/componets/horizontal_listview.dart';
import 'package:flutter_teste/componets/horizontal_listview2.dart';
import 'package:flutter_teste/page/carteirinha.dart';
import 'package:flutter_teste/page/cobranca.dart';
import 'package:flutter_teste/page/dependentes.dart';
import 'package:flutter_teste/page/login.page.dart';
import 'package:flutter_teste/page/pagamentos.dart';
import 'package:flutter_teste/page/postomo.dart';
import 'package:flutter_teste/services/http_service.dart';
import 'package:flutter_teste/services/login_api.dart';



class HomePage extends StatelessWidget {


  String dadosUser = 'teste';

  void _clickButton() async {
    var token = await LoginApi.getTokenAPI();
    var cpf = await LoginApi.getCpf();
    var dados = await ServiceAPI.getDados('beneficiario', token, cpf);

    return dados['nomebene'];
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
              accountName: new Text('Huayan Santiago'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('https://picsum.photos/250?image=9'),
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