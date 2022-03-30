

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:travel_rs/login/component/logo_text.dart';
import 'package:travel_rs/login/component/rounded_button.dart';
import 'package:travel_rs/login/component/trapezoid_up_cut.dart';
import 'package:travel_rs/login/utility/app_constant.dart';
import 'package:travel_rs/login/utility/color_utility.dart';
import 'package:travel_rs/models/user_model.dart';
import 'package:travel_rs/screen/home_page.dart';


class SignUpTab extends StatefulWidget {

  final String title;
  final Function onPressed;

   SignUpTab({Key key, @required this.onPressed, this.title}) : super(key: key);
  @override
  _SignUpTabState createState() => _SignUpTabState(onPressed: onPressed);
}


 enum AppState {
  free,
  picked,
  cropped,
}
class _SignUpTabState extends State<SignUpTab> {

  

  final Function onPressed;
  _SignUpTabState({this.onPressed});

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final photoUrl = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.only(
          top: size.height * 0.0,
          left: size.width * 0.05,
          right: size.width * 0.05,
          bottom: size.width * 0.0),
      child: Stack(
        children: <Widget>[
          TrapezoidUpCut(
            child: Stack(
              children: <Widget>[
                Material(
                  elevation: 16,
                  child: Container(
                      height: double.infinity,
                      color: Colors.white,
                      child: _buildForm(size, textTheme)),
                ),
              ],
            ),
          ),
          Positioned(
            top: 24,
            left: 12,
            child: InkWell(
              onTap: onPressed,
              child: Material(
                  elevation: 0.0,
                  shape: CircleBorder(),
                  color: Colors.pinkAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildForm(Size size, TextTheme textTheme) {
    return Scaffold(
      key: _scaffoldKey,
      body: ScopedModelDescendant<UserModel>(
        builder: (context, child, model){
          if(model.isLoading)
          return Center(child: CircularProgressIndicator(),);
          return Padding(
          padding: EdgeInsets.only(top: size.height * 0.15, left: 24, right: 24),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                    child: LogoText(),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                    child: _buildTextFormUsername(textTheme),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                    child: _buildTextFormEmail(textTheme),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                    child: _buildTextFormPassword(textTheme),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: 200,
                        child: RoundedButton(
                          text: BUTTON_SIGNUP,
                         onPressed: (){
                        if(_formKey.currentState.validate()){

                          Map<String, dynamic> userData = {
                            "name": _nameController.text,
                            "email": _emailController.text,
                            "photo": photoUrl
                          };

                          model.signUp(
                              userData: userData,
                              pass: _passController.text,
                              onSuccess: _onSuccess,
                              onFail: _onFail
                          );
                        }
                      },
                          linearGradient: LinearGradient(
                            begin: FractionalOffset.bottomLeft,
                            end: FractionalOffset.topRight,
                            colors: <Color>[
                              Color(getColorHexFromStr("#FF7539")),
                              Color(getColorHexFromStr("#FE6763")),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ));
        },
      )
    );
  }

  Widget _buildTextFormUsername(TextTheme textTheme) {
    return TextFormField(
      style:
          textTheme.title.copyWith(color: Colors.black87, letterSpacing: 1.2),
      decoration: new InputDecoration(
        hintText: "Nome",
        hintStyle: textTheme.subhead.copyWith(color: Colors.grey),
        suffixIcon: Icon(
          Icons.person,
          color: Colors.grey,
        ),
      ),
      keyboardType: TextInputType.text,
      controller: _nameController,
      validator: (value){
      if(value.isEmpty) {
        return "Nome Inválido!";
      }
      return null;
    },
    );
  }

  Widget _buildTextFormEmail(TextTheme textTheme) {
    return TextFormField(
      style:
          textTheme.title.copyWith(color: Colors.black87, letterSpacing: 1.2),
      decoration: new InputDecoration(
          hintText: EMAIL_AUTH_HINT,
          fillColor: Colors.grey,
          hintStyle: textTheme.subhead.copyWith(color: Colors.grey),
          suffixIcon: Icon(Icons.lock, color: Colors.grey)),
      keyboardType: TextInputType.emailAddress,
      controller: _emailController,
      validator: (value){
    if(value.isEmpty || !value.contains("@")) {
      return "E-mail inválido!";
    }
    return null;
  },
    );
  }

   Widget _buildTextFormPassword(TextTheme textTheme) {
    return TextFormField(
      style:
          textTheme.title.copyWith(color: Colors.black87, letterSpacing: 1.2),
      decoration: new InputDecoration(
          hintText: PASSWORD_AUTH_HINT,
          fillColor: Colors.grey,
          hintStyle: textTheme.subhead.copyWith(color: Colors.grey),
          suffixIcon: Icon(Icons.lock, color: Colors.grey)),
      keyboardType: TextInputType.text,
      controller: _passController,
      obscureText: true,
      validator: (value){
      if(value.isEmpty || value.length < 6) {
        return "Senha inválida!";
      }
      return null;
    },
    );
  }

       void _onSuccess() {
      _scaffoldKey.currentState.showSnackBar(
        SnackBar(content: Text("Usuário criado com sucesso!."),
        backgroundColor: Colors.blueAccent,
        duration: Duration(seconds: 2),)
      );
       Future.delayed(Duration(seconds: 2)).then((_){
         Navigator.of(context).pushReplacement(
           MaterialPageRoute(builder: (context) => HomePage())
         );
  });
    }

    void _onFail() {
      _scaffoldKey.currentState.showSnackBar(
        SnackBar(content: Text("Falha ao criar usuário!."),
        backgroundColor: Colors.redAccent,
        duration: Duration(seconds: 2),)
      );
    }
}
