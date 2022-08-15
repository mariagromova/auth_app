import 'package:auth_app_test/colors.dart';
import 'package:auth_app_test/screens/otp_auth.dart';
import 'package:auth_app_test/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 45,
              ),
              Text(
                'Welcome again!',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: firstColor),
              ),
              SizedBox(height: 40),
              TextField(
                // 4 values for login
                maxLength: 4,
                cursorColor: secondColor,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: firstColor,
                  ),
                  hintText: "Enter Login",
                  // enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
              TextField(
                cursorColor: firstColor,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  focusColor: firstColor,
                  icon: Icon(
                    Icons.vpn_key,
                    color: firstColor,
                  ),
                  hintText: "Enter Password",
                  focusedBorder: InputBorder.none,
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OtpAuth()));
                    },
                    child: Text(
                      'Use code verification',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      (firstColor),
                      secondColor,
                    ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                    borderRadius: BorderRadius.circular(50),
                    // color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have Any Account?  "),
                    GestureDetector(
                      child: Text("Register Now",
                          style: TextStyle(color: secondColor)),
                      onTap: () {
                        // Write Tap Code Here.
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ));
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
