import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:travel_rs/cidades/porto_alegre/places/belem/belem_screen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/botanico/botanicoScreen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/cais/caisScreen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/catedral/catedralScreen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/moinhos/moinhosScreen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/parque/parqueScreen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/quintana/quintanaScreen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/redencao/redencao_Screen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/santuario/santuario_screen.dart';
import 'package:travel_rs/screen/home_page.dart';
import 'cidades/gramado/places/lago/lago_Screen.dart';
import 'cidades/porto_alegre/places/gremio/gremioScreen.dart';
import 'cidades/porto_alegre/places/inter/interScreen.dart';
import 'cidades/porto_alegre/places/ipanema/ipanemaScreen.dart';
import 'cidades/porto_alegre/places/marinha/marinha_screen.dart';
import 'cidades/porto_alegre/places/mercado/mercadoScreen.dart';
import 'citys_screen/porto_screen.dart';
import 'login/ui/onboarding/onboarding_page.dart';
import 'models/user_model.dart';


void main() => runApp(MyApp());

/// App widget class

class MyApp extends StatelessWidget {
  //making list of pages needed to pass in IntroViewsFlutter constructor.
  final pages = [
    PageViewModel(
        pageColor:  Colors.white,
        // iconImageAssetPath: 'assets/air-hostess.png',
        bubble: Image.asset('assets/air-hostess.png'),
        bubbleBackgroundColor: Colors.black12,
        body: Text(
          'Você conhce o Rio Grande do Sul.\n Iremos mostrar as maravilhas do sul do País.',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        title: Text(
          'Travel RS',
          style: TextStyle(
            fontFamily: 'Lobster',
            color: Colors.purpleAccent,
            fontSize: 40,
          ),
        ),
        textStyle: TextStyle(fontFamily: 'Fresca', color: Colors.white),
        mainImage: Image.asset(
          'assets/logoMarca.png',
          height: 350.0,
          width: 350.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: const Color(0xFF4DB6AC),
      iconImageAssetPath: 'assets/waiter.png',
      bubbleBackgroundColor: Colors.black12,
      body: Text(
        'Conheça as tradições gauchas, descubra um mundo novo!.',
      ),
      title: Text('Tradições'),
      mainImage: Image.asset(
        'assets/gaucho.png',
        height: 585.0,
        width: 585.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'Fresca', color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xFF607D8B),
      iconImageAssetPath: 'assets/taxi-driver.png',
      bubbleBackgroundColor: Colors.black12,
      body: Text(
        'Queremos que aproveite o maximo possível. Então nao corra seguraça em primeiro lugar.',
      ),
      title: Text('Seguraça'),
      mainImage: Image.asset(
        'assets/travel_car.png',
        height: 385.0,
        width: 385.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'Fresca', color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel RS', //title of app
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData
    
      home: Builder(
        builder: (context) => IntroViewsFlutter(
              pages,
              onTapDoneButton: () {
              Navigator.of(context).pushReplacement(
                             MaterialPageRoute(
                               builder: (context) => OnboardingPage()
                             )
                           );

              },
              pageButtonTextStyles: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 18.0,
              ),
            ), 
      ), 

      ///ROUTES
routes: {
  '/home': (context) => HomePage(),
  '/porto': (context) => PortoScreen(),
  '/gremio': (context) => GremioScreen(),
  '/inter': (context) => InterScreen(),
  '/orla': (context) => CaisScreen(),
  '/santuario': (context) => SantuarioScreen(),
  '/belem': (context) => BelemScreen(),
  '/catedral': (context) => CatedralScreen(),
  '/ipanema': (context) => IpanemaScreen(),
  '/botanico': (context) => BotanicoScreen(),
  '/parque': (context) => ParqueScreen(),
  '/quintana': (context) => QuintanaScreen(),
  '/mercado': (context) => MercadoScreen(),
  '/redencao': (context) => RedencaoScreen(),
  '/marinha': (context) => MarinhaScreen(),
  '/moinhos': (context) => MoinhosScreen(),
  '/lago': (context) => LagoScreen(),
},


    ),
    );
  }
}

