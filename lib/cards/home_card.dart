import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_rs/citys_screen/gramadoScreen.dart';
import 'package:travel_rs/citys_screen/porto_screen.dart';

class PortoHome extends StatelessWidget {
  final String imagePorto = "assets/images/cidades/porto_alegre.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 180,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imagePorto),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Porto Alegre",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Capital",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                           Navigator.of(context).pushReplacement(
                             MaterialPageRoute(
                               builder: (context) => PortoScreen()
                             )
                           );
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class Gramado extends StatelessWidget {
  final String imageGramado = "assets/images/cidades/gramado.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageGramado),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Gramado",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Serra Gaúcha",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => GramadoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class Canela extends StatelessWidget {
  final String imageCanela = "assets/images/cidades/canela.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageCanela),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Canela",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Serra Gaúcha",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class SaoFranciscoDePaula extends StatelessWidget {
  final String imageFrancisco = "assets/images/cidades/sao_francisco_de_paula.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageFrancisco),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("São Francisco de Paula",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Serra Gaúcha",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class Cambara extends StatelessWidget {
  final String imageCambara = "assets/images/cidades/cambara_do_sul.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageCambara),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Cambará do Sul",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Serra Gaúcha",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class BentoGoncalves extends StatelessWidget {
final String imageBento = "assets/images/cidades/bento_gonsalves.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageBento),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Bento Gonçalves",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Serra Gaúcha",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class CachoeiraDoSul extends StatelessWidget {
final String imageCachoeira = "assets/images/cidades/cachoeira_do_sul.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageCachoeira),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Cachoeira do Sul",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Serra Gaúcha",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class CarlosBarbosa extends StatelessWidget {
final String imageBarbosa = "assets/images/cidades/carlos_barbosa.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageBarbosa),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Carlos Barbosa",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Serra Gaúcha",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class Caxias extends StatelessWidget {
final String imageCaxias = "assets/images/cidades/caxias_do_sul.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageCaxias),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Caxias do Sul",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Serra Gaúcha",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class Farroupilha extends StatelessWidget {
final String imageFarroupilha = "assets/images/cidades/farroupilha.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageFarroupilha),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Farroupilha",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Serra Gaúcha",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class Garibaldi extends StatelessWidget {
final String imageGaribaldi = "assets/images/cidades/garibaldi.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageGaribaldi),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Garibalde",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Serra Gaúcha",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class PetropolisScreen extends StatelessWidget {
final String imagepetropolis = "assets/images/cidades/nova_petropolis.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imagepetropolis),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Nova Petrópolis",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Serra Gaúcha",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class VeranopolisScreen extends StatelessWidget {
final String imageVeranopolis = "assets/images/cidades/veranopolis.jpg";
final String imageSantaCruz = "assets/images/cidades/santa_cruz.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageVeranopolis),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Veranópolis",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Serra Gaúcha",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class SantaCruz extends StatelessWidget {
final String imageSantaCruz = "assets/images/cidades/santa_cruz.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageSantaCruz),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Santa Cruz do Sul",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Serra Gaúcha",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class NovaPrata extends StatelessWidget {
final String imagePrata = "assets/images/cidades/nova_prata.jpg";
final String imageMiguel = "assets/images/cidades/sao_miguel_das_missoes.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imagePrata),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Nova Prata",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Serra Gaúcha",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class SaoMiguel extends StatelessWidget {
final String imageMiguel = "assets/images/cidades/sao_miguel_das_missoes.jpg";
final String imageTorres = "assets/images/cidades/torres.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageMiguel),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("São Miguel das Missões",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Serra Gaúcha",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class TorresScreen extends StatelessWidget {
final String imageTorres = "assets/images/cidades/torres.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageTorres),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Torres",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Litoral Gaúcho",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class CapaoScreen extends StatelessWidget {
final String imageCapao = "assets/images/cidades/capao_da_canoa.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageCapao),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Capão da Canoa",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Litoral Gaúcho",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class TramandaiScreen extends StatelessWidget {
final String imageTramandai = "assets/images/cidades/tramandai.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageTramandai),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Tramandaí",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Litoral Gaúcho",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class ImbeScreen extends StatelessWidget {
final String imageUruguaina = "assets/images/cidades/imbe.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageUruguaina),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Imbé",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Litoral Gaúcho",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class BageScreen extends StatelessWidget {
final String imageBage = "assets/images/cidades/bage.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageBage),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Bagé",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Interior Gaúcho",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class PassoFundoScreen extends StatelessWidget {
final String imageFundo = "assets/images/cidades/passo_fundo.png";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageFundo),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Passo Fundo",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Interior Gaúcho",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class PelotasScreen extends StatelessWidget {
final String imagePelotas = "assets/images/cidades/pelotas.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imagePelotas),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Pelotas",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Interior Gaúcho",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class RioGrandeScreen extends StatelessWidget {
final String imageRioGrande = "assets/images/cidades/rio_grande.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageRioGrande),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Rio Grande",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Interior Gaúcho",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class SantaRosaScreen extends StatelessWidget {
final String imageSantaRosa = "assets/images/cidades/santa_rosa.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageSantaRosa),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Santa Rosa",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Terra da Xuxa",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class UruguaianaScreen extends StatelessWidget {
final String imageUruguaina = "assets/images/cidades/uruguaiana.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageUruguaina),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Uruguaiana",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Fronteira",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}

class IjuiScreen extends StatelessWidget {
final String imageIjui = "assets/images/cidades/ijui.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
      width: 200,
      height: 220,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image(
                image: AssetImage(imageIjui),
                fit: BoxFit.fill,
                width: 280,
                height: 200,
              )
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170,
              height: 170,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Ijuí",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Interior Gaúcho",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Conheça",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat'
                      ),
                      ),
                      new IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PortoScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}



