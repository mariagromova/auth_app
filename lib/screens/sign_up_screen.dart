import 'package:auth_app_test/colors.dart';
import 'package:auth_app_test/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) => initWidget();

    final maskFormatter = new MaskTextInputFormatter(
  mask: '+# (###) ###-##-##', 
  type: MaskAutoCompletionType.lazy
);

  Widget initWidget() {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
         child: Column(
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: secondColor,
                gradient: LinearGradient(
                  colors: [
                    (secondColor),
                     firstColor
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(),
                    alignment: Alignment.center,
                    child: Text(
                      "Registration Form",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: shadowColor),
                ],
              ),
              child: TextField(
                cursorColor: secondColor,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color:secondColor
                  ),
                  hintText: "First Name",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: shadowColor),
                ],
              ),
              child: TextField(
                cursorColor: secondColor,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: secondColor,
                  ),
                  hintText: "Last Name",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
              Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color:shadowColor),
                ],
              ),
              child: TextField(
                cursorColor:secondColor,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: secondColor,
                  ),
                  hintText: "id(profession)",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: shadowColor),
                ],
              ),
              child: TextField(
                cursorColor: secondColor,
                decoration: InputDecoration(
                  icon:
                      Icon(Icons.email, color: secondColor),
                  hintText: "Email",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: shadowColor,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 100,
                      color: shadowColor),
                ],
              ),
              child: TextField(
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                   inputFormatters: [maskFormatter],
                cursorColor: secondColor,
                decoration: InputDecoration(
                  focusColor:secondColor,
                  icon: Icon(
                    Icons.phone,
                    color: secondColor,
                  ),
                  hintText: "Phone Number",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: shadowColor,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 100,
                      color: shadowColor),
                ],
              ),
              child: TextField(
                cursorColor: secondColor,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  focusColor:secondColor,
                  icon: Icon(
                    Icons.vpn_key,
                    color: secondColor,
                  ),
                  hintText: "Enter Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    (firstColor),
                    secondColor
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: shadowColor),
                  ],
                ),
                child: InkWell(
                  onTap: () {
                   
                  },
                  child: Text(
                    "REGISTER",
                    style: TextStyle(color: shadowColor),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have account?  "),
                  GestureDetector(
                    child: Text(
                      "Log in",
                      style: TextStyle(color: secondColor),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                  )
                ],
              ),
            )
          ],
        )));
  }
}
