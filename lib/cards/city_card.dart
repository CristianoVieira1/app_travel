import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_rs/citys_screen/porto_screen.dart';

class CityCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, -10.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/porto_alegre.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black38,
                          offset: Offset(0.0, 20.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black38,
                          offset: Offset(0.0, -10.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 65.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Porto Alegre",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                               Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                    PortoScreen()));
                                },
                                child: Text(
                                  '          Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/gramado.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 65.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Gramado",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '          Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/canela.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 90.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Canela",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '          Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/garibalde.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 70.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Garibalde",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '          Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/carlos_barbosa.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Carlos Barbosa",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '          Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/caxias_do_sul.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 65.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Caxias do Sul",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '          Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/farroupilha.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 65.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Farroupilha",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '          Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/nova_petropolis.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Nova Petropolis",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '          Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/ijui.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 110.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Ijuí",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '          Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/nova_prata.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 70.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Nova Prata",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '          Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/pelotas.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 90.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Pelotas",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '          Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/passo_fundo.png"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 65.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Passo Fundo",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '          Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/rio_grande.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 65.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Rio Grande",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '          Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/santa_cruz.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 70.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Santa Cruz",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '          Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/santa_rosa.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 65.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Santa Rosa",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '          Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/sao_francisco_de_paula.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("São Francisco de Paula",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '   Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/sao_miguel_das_missoes.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("São Miguel das Missões",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '  Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/torres.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 65.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Torres",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '                   Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
           Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/capao_da_canoa.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 45.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Capão da Canoa",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '        Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
           Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/imbe.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 65.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Imbé",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '                      Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
           Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/tramandai.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 65.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Tramandai",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '            Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
           Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/tres_coroas.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 65.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Três Coroas",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '            Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
           Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/uruguaiana.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 65.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Uruguaiana",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '            Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
           Container(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                  height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cidades/veranopolis.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 170,
                child:   Container(
                  width: 500,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                          BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15.0
                          ),
                           BoxShadow (
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 15.0
                          )
                        ]
                  ),
                ),
              ),
            
              Positioned(
                top: 160,
                    child: Container(
                    padding: EdgeInsets.only(top: 1.0, left: 65.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Veranópolis",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Poppins-Medium'
                            )
                            ),
                            Container(),
                            SizedBox(height: 2.0),
                          FlatButton(
                                onPressed: () {
                                },
                                child: Text(
                                  '               Conhecer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
