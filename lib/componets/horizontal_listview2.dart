import 'package:flutter/material.dart';
import 'package:flutter_teste/main.dart';
import 'package:flutter_teste/page/cobranca.dart';
import 'package:flutter_teste/page/pagamentos.dart';

class HorizontalList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Categoria(
            image_location: 'assets/cobranca.png',
            image_caption: 'Cobrança',
          ),
          Categoria2(
            image_location: 'assets/pagamentos.png',
            image_caption: 'Meus Pagamentos',
          ),
        ],
      ),
    );
  }
}

class Categoria extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Categoria({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).maybePop();
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (BuildContext context) => new CobrancaPage()));
        },
        child: Container(
          width: 130.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Categoria2 extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Categoria2({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).maybePop();
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (BuildContext context) => new PagamentosPage()));
        },
        child: Container(
          width: 130.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
