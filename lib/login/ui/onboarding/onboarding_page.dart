
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:travel_rs/login/ui/onboarding/tabs/signup_tab.dart';
import 'package:travel_rs/login/utility/app_constant.dart';
import 'package:travel_rs/login/utility/color_utility.dart';
import 'package:travel_rs/screen/home_page.dart';

import 'onboarding_animation.dart';
import 'tabs/signin_tab.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>  with TickerProviderStateMixin {
  PageController _pageController;
  AnimationController animationController;
  OnBoardingEnterAnimation onBoardingEnterAnimation;
  ValueNotifier<double> selectedIndex = ValueNotifier<double>(0.0);

  String errorMessage = '';
  String successMessage = '';
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _goolgeSignIn = new GoogleSignIn();

    Future<FirebaseUser> _signInGoogle(BuildContext context) async{

      Scaffold.of(context).showSnackBar(new SnackBar(
        content: new Text('Logando em Google')
      ));

      final GoogleSignInAccount googleUser = await _goolgeSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      FirebaseUser userDetails = await _firebaseAuth.signInWithCredential(credential);
      ProviderDetails providerInfo = new ProviderDetails(userDetails.providerId);

      List<ProviderDetails> providerData = new List<ProviderDetails>();
      providerData.add(providerInfo);

      // UserDetails details = new UserDetails(userDetails.providerId, userDetails.displayName,
      // userDetails.photoUrl,
      // userDetails.email,
      // providerData);

      Navigator.pushReplacement(context, 
      new MaterialPageRoute(
        builder: (context) => HomePage()
      )
      );
      return userDetails;
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.8,
    );

    animationController = new AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this);

    onBoardingEnterAnimation = OnBoardingEnterAnimation(animationController);

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      resizeToAvoidBottomPadding: false,
      body: _buildContent()
  );

  Future<bool> _onBackPressed(){
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Quer realmente sair do Travel RS"),
        actions: <Widget>[
          FlatButton(
            child: Text("Não"),
            onPressed: ()=>Navigator.pop(context, false),
          ),
          FlatButton(
            child: Text("Sim"),
            onPressed: ()=>Navigator.pop(context, true),
          )
        ],
      )
    );
  }


final FirebaseAuth auth = FirebaseAuth.instance;
  final FacebookLogin fbLogin = new FacebookLogin();
  bool isFacebookLoginIn = false;
  Widget _buildContent() {
    final Size size = MediaQuery.of(context).size;
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return WillPopScope(
            onWillPop: _onBackPressed,
            child: Stack(
            children: <Widget>[

              _buildTopBubble(size.height, - size.height * 0.5, - size.width * 0.1, LinearGradient(
                begin: FractionalOffset.bottomLeft,
                end: FractionalOffset.topRight,
                colors: <Color>[
                  Color(getColorHexFromStr("#57a2ea")),
                  Color(getColorHexFromStr("#00BFFF")),
                ],
              )),


              _buildTopBubble(size.width, - size.width * 0.5, size.width * 0.5, LinearGradient(
                begin: FractionalOffset.bottomLeft,
                end: FractionalOffset.topRight,
                colors: <Color>[
                  Colors.white.withOpacity(0.2),
                  Colors.white.withOpacity(0.2),
                ],
              )),
              _buildTopBubble(size.width, - size.width * 0.5, - size.width * 0.7, LinearGradient(
                begin: FractionalOffset.bottomLeft,
                end: FractionalOffset.topRight,
                colors: <Color>[
                  Colors.white.withOpacity(0.0),
                  Colors.white.withOpacity(0.2),
                ],
              )),
              _buildTopBubble(size.width, - size.width * 0.7, - size.width * 0.4, LinearGradient(
                begin: FractionalOffset.bottomLeft,
                end: FractionalOffset.topRight,
                colors: <Color>[
                  Colors.white.withOpacity(0.0),
                  Colors.white.withOpacity(0.2),
                ],
              )),
              _buildTopBubble(size.width, - size.width * 0.7, size.width * 0.2, LinearGradient(
                begin: FractionalOffset.bottomLeft,
                end: FractionalOffset.topRight,
                colors: <Color>[
                  Colors.white.withOpacity(0.0),
                  Colors.white.withOpacity(0.2),
                ],
              )),
              _buildTopBubble(size.width * 0.5, - size.width * 0.5, size.width * 0.5, LinearGradient(
                begin: FractionalOffset.bottomLeft,
                end: FractionalOffset.topRight,
                colors: <Color>[
                  Colors.white.withOpacity(0.1),
                  Colors.white.withOpacity(0.0),
                ],
              )),

              _buildTopBubble(size.height * 0.5, size.height * 0.5,  - size.width * 0.5, LinearGradient(
                begin: FractionalOffset.bottomLeft,
                end: FractionalOffset.topRight,
                colors: <Color>[
                  Color(getColorHexFromStr("#57a2ea")),
                  Color(getColorHexFromStr("#00BFFF")),
                ],
              )),

              FadeTransition(
                opacity: onBoardingEnterAnimation.fadeTranslation,
                child: NotificationListener(
                  onNotification: (ScrollNotification notification) {
                    if (notification.depth == 0 &&
                        notification is ScrollUpdateNotification) {
                      selectedIndex.value = _pageController.page;
                      setState(() {});
                    }
                    return false;
                  },
                  child: PageView(
                    controller: _pageController,
                    scrollDirection: Axis.vertical,
                    physics: new NeverScrollableScrollPhysics(),
                    onPageChanged: (int index) {},
                    children: <Widget>[
                      SignInTab(onPressed: () {
                        _pageController.animateToPage(1, duration: Duration(milliseconds: 1000), curve: Curves.fastOutSlowIn);
                      },),
                      SignUpTab(onPressed: () {
                        _pageController.animateToPage(0, duration: Duration(milliseconds: 1000), curve: Curves.fastOutSlowIn);
                      }),
                    ],
                  ),
                ),
              ),


              Positioned(
                top: size.height* 0.75,
                left: size.width* 0.1,
                child: InkWell(onTap: () => _signInGoogle(context)
                                            .then((FirebaseUser user)=>print(user))
                                            .catchError((e)=> print(e)),
                child: _buildSocialMediaAppButton(COLOR_GOOGLE, IMAGE_PATH_GOOGLE, 48, - selectedIndex.value)),
              ),

              Positioned(
                top: size.height* 0.8,
                left: size.width* 0.3,
                child: InkWell(onTap: (){
                  facebookLogin(context).then((user) {
                      if (user != null) {
                        print('Logged in successfully.');
                        setState(() {
                          isFacebookLoginIn = true;
                          successMessage =
                              'Login efetuado com sucesso.\nEmail : ${user.email}\nSendo direcionado para a Pagina Inicial.';
                              if(user != null) {
                                  Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => HomePage()
                                  )
                                );
                              } else {
                                successMessage = 'Erro ao loagar ';
                              }
                               
                        });
                        
                      } else {
                        print('Error while Login.');
                      }
                    });
                }
                  
                 
                ,child: _buildSocialMediaAppButton(COLOR_FACEBOOK, IMAGE_PATH_FACEBOOK, 48, - selectedIndex.value)),
              ),

              Positioned(
                top: size.height* 0.85,
                left: size.width* 0.5,
                child: InkWell(onTap: (){
                    facebookLoginout().then((response) {
                      if (response) {
                        setState(() {
                          isFacebookLoginIn = false;
                          successMessage = 'saiu';
                        });
                      }
                    });
                  
                },
                child: _buildSocialMediaAppButton(COLOR_TWITTER, IMAGE_PATH_TWITTER, 48, - selectedIndex.value)),
              ),

              Positioned(
                top: size.height* 0.05,
                left: size.width* 0.3,
                child: InkWell(onTap: () => _signInGoogle(context)
                                            .then((FirebaseUser user)=>print(user))
                                            .catchError((e)=> print(e)),
                child: _buildSocialMediaAppButton(COLOR_GOOGLE, IMAGE_PATH_GOOGLE, 48,1 - selectedIndex.value )),
              ),

              Positioned(
                top: size.height* 0.1,
                left: size.width* 0.5,
                child: InkWell(onTap:  (){
                  facebookLogin(context).then((user) {
                      if (user != null) {
                        print('Logged in successfully.');
                        setState(() {
                          isFacebookLoginIn = true;
                          successMessage =
                              'Login efetuado com sucesso.\nEmail : ${user.email}\nSendo direcionado para a Pagina Inicial.';
                              if(user != null) {
                                  Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => HomePage()
                                  )
                                );
                              } else {
                                successMessage = 'Erro ao loagar ';
                              }
                               
                        });
                        
                      } else {
                        print('Error while Login.');
                      }
                    });
                
                },child: _buildSocialMediaAppButton(COLOR_FACEBOOK, IMAGE_PATH_FACEBOOK, 48,1 - selectedIndex.value )),
              ),

              Positioned(
                top: size.height* 0.15,
                left: size.width* 0.7,
                child: InkWell(onTap: () {
                  Scaffold.of(context).showSnackBar(new SnackBar(content: new Text('Twitter')));
                },child: _buildSocialMediaAppButton(COLOR_TWITTER, IMAGE_PATH_TWITTER, 48, 1 - selectedIndex.value )),
              ),


            ],
          ),
          );
        });
  }

  Widget _buildSocialMediaAppButton(
      String color, String image, double size, double animatedValue) {
    return FadeTransition(
      opacity: onBoardingEnterAnimation.fadeTranslation,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.translationValues(animatedValue * MediaQuery.of(context).size.height, 0,  0.0),
        child: Container(
          height: size,
          width: size,
          padding: const EdgeInsets.all(8.0),
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: Color(getColorHexFromStr(color)),
          ),
          child: Image.asset(image),
        ),
      ),
    );
  }
  

  Widget _buildTopBubble(double diameter, double top, double right, LinearGradient linearGradient) {
    return Positioned(
      top: top,
      right: right,
      child: Transform(
        transform: Matrix4.diagonal3Values(onBoardingEnterAnimation.scaleTranslation.value, onBoardingEnterAnimation.scaleTranslation.value, 0.0),
        child: Container(
            height: diameter,
            width: diameter,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(diameter / 2),
                gradient: linearGradient
            )
        ),
      ),
    );
  }

   Future<FirebaseUser> facebookLogin(BuildContext context) async {
    FirebaseUser currentUser;
    // fbLogin.loginBehavior = FacebookLoginBehavior.webViewOnly;
    // if you remove above comment then facebook login will take username and pasword for login in Webview
    try {
      final FacebookLoginResult facebookLoginResult =
          await fbLogin.logInWithReadPermissions(['email', 'public_profile']);
      if (facebookLoginResult.status == FacebookLoginStatus.loggedIn) {
        FacebookAccessToken facebookAccessToken =
            facebookLoginResult.accessToken;
        final AuthCredential credential = FacebookAuthProvider.getCredential(
            accessToken: facebookAccessToken.token);
        final FirebaseUser user = await auth.signInWithCredential(credential);
        assert(user.email != null);
        assert(user.displayName != null);
        assert(!user.isAnonymous);
        assert(await user.getIdToken() != null);
        currentUser = await auth.currentUser();
        assert(user.uid == currentUser.uid);
        return currentUser;
      }
    
      
    } catch (e) {
      print(e);
    }
    
    return currentUser;
    
    
  }

  Future<bool> facebookLoginout() async {
    await auth.signOut();
    await fbLogin.logOut();
    return true;
  }

}

class UserDetails{
    final String providerDetails;
    final String userName;
    final String photoUrl;
    final String userEmail;
    final List<ProviderDetails> providerData;
    UserDetails(this.providerDetails, this.userName, this.photoUrl, this.userEmail, this.providerData);
  }

  class ProviderDetails {
    ProviderDetails(this.providerDetails);
    final String providerDetails;
  }

