import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:travel_rs/login/component/logo_text.dart';
import 'package:travel_rs/login/component/rounded_button.dart';
import 'package:travel_rs/login/component/trapezoid_down_cut.dart';
import 'package:travel_rs/login/utility/app_constant.dart';
import 'package:travel_rs/login/utility/color_utility.dart';
import 'package:travel_rs/models/user_model.dart';
import 'package:travel_rs/screen/home_page.dart';

class SignInTab extends StatefulWidget {
  final Function onPressed;
  
  SignInTab({@required this.onPressed});
  @override
  _SignInTabState createState() => _SignInTabState(onPressed);
}

class _SignInTabState extends State<SignInTab> {
  final Function onPressed;
  
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  _SignInTabState(this.onPressed);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.only(
          top: size.height * 0.0,
          left: size.width * 0.05,
          right: size.width * 0.05,
          bottom: size.width * 0.05),
      child: Stack(
        children: <Widget>[
          TrapezoidDownCut(
            child: Stack(
              children: <Widget>[
                Material(
                  elevation: 16,
                  child: Container(
                      height: double.infinity,
                      color: Colors.white,
                      child: Scaffold(
                        backgroundColor: Colors.white70,
                        
                        
      key: _scaffoldKey,
     body: ScopedModelDescendant<UserModel>(
       builder: (context, child, model){
         if(model.isLoading)
            return Center(
              child: SpinKitRipple(color: Colors.blueAccent, size: 200.0,),
            );
            return Padding(
        padding: EdgeInsets.only(top: size.height * 0.05, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: Center(child: LogoText()),
                ),
                SizedBox(
                  height: 48,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: TextFormField(
                    style: textTheme.title
                        .copyWith(color: Colors.black87, letterSpacing: 1.2),
                    decoration: new InputDecoration(
                      hintText: 'E-mail',
                      hintStyle: textTheme.subhead
                          .copyWith(color: Colors.black.withOpacity(0.6)),
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                     validator: (value) {
                       if(value.isEmpty || !value.contains("@")) {
                         return "E-mail inválido";
                       }
                       return null;
                     },
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: TextFormField(
                    style: textTheme.title
                        .copyWith(color: Colors.black87, letterSpacing: 1.2),
                    decoration: new InputDecoration(
                        hintText: 'Senha',
                        hintStyle: textTheme.subhead
                            .copyWith(color: Colors.black.withOpacity(0.6)),
                        suffixIcon: Icon(Icons.lock, color: Colors.grey)),
                    keyboardType: TextInputType.text,
                    controller: _passController,
                    obscureText: true,
                     validator: (value) {
                    if(value.isEmpty || value.length < 6){
                      return "Senha inválida";
                    }
                    return null;
                    
                  },
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                Align(
                  alignment: FractionalOffset.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: size.width * 0.05),
                    child: Container(
                      width: 200,
                      child: RoundedButton(
                        text: BUTTON_LOGIN,
                         onPressed: (){
                        if(_formKey.currentState.validate()){

                        }
                        model.signIn(
                            email: _emailController.text,
                            pass: _passController.text,
                            onSuccess: _onSuccess,
                            onFail: _onFail
                        );
                      },
                        linearGradient: LinearGradient(
                          begin: FractionalOffset.bottomLeft,
                          end: FractionalOffset.topRight,
                          colors: <Color>[
                            Color(getColorHexFromStr("#FE685F")),
                            Color(getColorHexFromStr("#FB578B")),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        );
       }
     ),
    ),),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 24,
            right: 12,
            child: InkWell(
              onTap: onPressed,
              child: Material(
                  elevation: 0.0,
                  color: Colors.pinkAccent,
                  shape: CircleBorder(),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
   void _onSuccess() {
     Navigator.of(context).pushReplacement(
       MaterialPageRoute(
         builder: (context) => HomePage()
       )
     );
    }

 void _onFail(){
    _scaffoldKey.currentState.showSnackBar(
        SnackBar(content: Text("Falha ao Entrar!"),
          backgroundColor: Colors.redAccent,
          duration: Duration(seconds: 2),
        )
    );
  }

  
}