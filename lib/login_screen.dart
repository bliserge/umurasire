import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Widget buildEmail() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 6,
                      offset: Offset(0,2 )
                  )
                ]
            ),
            height: 60,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 24
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xff333C4B),
                  ),
                  hintText: "Email",
                  hintStyle: TextStyle(
                      color: Colors.black54
                  )
              ),

            )
        )
      ],
    );
  }

  Widget buildpassword() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 6,
                      offset: Offset(0,2 )
                  )
                ]
            ),
            height: 60,
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 24
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xff333C4B),
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(
                      color: Colors.black54
                  )
              ),

            )
        )
      ],
    );
  }

  Widget buildForgotPasswordBtn() {
    return Container(
        alignment: Alignment.centerRight,
        child: FlatButton(
          onPressed: () => {},
          padding: EdgeInsets.only(right: 2),
          child: Text(
            'Forgot Password?',
            style: TextStyle(
                color: Colors.white,
                fontSize: 17
            ),
          ),
        )
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => {},
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        color: Color(0xffD4A056),
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff333C4B),
                      Color(0xff303846),
                      Color(0xff333C4B),
                      Color(0xff303846),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                  )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 50,),
                      buildEmail(),
                      SizedBox(height: 10,),
                      buildpassword(),
                      SizedBox(height: 10,),
                      buildForgotPasswordBtn(),
                      SizedBox(height: 15,),
                      buildLoginBtn(),
                      SizedBox(height: 20,),
                      RichText(
                        text: TextSpan(
                            text: 'Don\'t have an account?',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Sign up',
                                  style: TextStyle(
                                      color: Colors.deepOrange, fontSize: 20),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushNamed(context, '/account');
                                    })
                            ]),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

