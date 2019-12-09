import 'package:flutter/material.dart';
import 'package:flutter_teste/page/carteirinha.dart';
import 'package:flutter_teste/page/dependentes.dart';
import 'package:flutter_teste/page/home.page.dart';
import 'package:flutter_teste/page/postomo.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Categoria(
            image_location: 'assets/carteirinha.png',
            image_caption: 'Minha Carteirinha',
          ),
          Categoria2(
            image_location: 'assets/dependentes.png',
            image_caption: 'Meus Dependentes',
          ),
          Categoria3(
            image_location: 'assets/postumo.png',
            image_caption: 'Atendimento Postumo',
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
      padding: const EdgeInsets.all(3.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).maybePop();
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (BuildContext context) => new CarteirinhaPage()));
        },
        child: Container(
          width: 130.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 150.0,
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
      padding: const EdgeInsets.all(3.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).maybePop();
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (BuildContext context) => new DependentesPage()));
        },
        child: Container(
          width: 130.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 150.0,
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

class Categoria3 extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Categoria3({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).maybePop();
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (BuildContext context) => new PostomoPage()));
        },
        child: Container(
          width: 130.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 150.0,
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
