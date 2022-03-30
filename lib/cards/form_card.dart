import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCard extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ScreenUtil.getInstance().setHeight(620),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 15.0)
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Bem Vindo",
              style: TextStyle(
                  fontSize: ScreenUtil.getInstance().setSp(45),
                  fontFamily: "Poppins-Bold",
                  color: Colors.black38,
                  letterSpacing: .6),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text(
              "E-mail",
              style: TextStyle(
                  fontFamily: "Poppins-Medium",
                  fontSize: ScreenUtil.getInstance().setSp(26)),
            ),
           TextFormField(
             decoration: InputDecoration(
               icon: Icon(
                 Icons.person_outline,
                 color: Colors.blue,
               ),
               labelText: 'E-mail',
               labelStyle: TextStyle(
                 fontFamily: "Montserrat",
                 color: Colors.grey, ),
                 focusedBorder: UnderlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.blueAccent))),
                     keyboardType: TextInputType.emailAddress,
                    //  validator: (text) {
                    //    if(text.isEmpty || !text.contains("@"))
                    //    return "E-mail inválido";
                    //  },
           ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text(
              "Password",
              style: TextStyle(
                  fontFamily: "Poppins-Medium",
                  fontSize: ScreenUtil.getInstance().setSp(26)),
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.lock_outline,
                  color: Colors.blue
                ),
                labelText: "Senha",
                labelStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                  color: Colors.blueAccent))),
                  obscureText: true,
                  // validator: (text) {
                  //   if(text.isEmpty || text.length < 6);
                  //   return "Senha inválida";
                  // },
              
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Esqueceu a senha?",
                  style: TextStyle(
                      color: Colors.blue,
                      fontFamily: "Poppins-Medium",
                      fontSize: ScreenUtil.getInstance().setSp(28)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

