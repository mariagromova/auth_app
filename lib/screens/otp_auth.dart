import 'package:auth_app_test/colors.dart';
import 'package:auth_app_test/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class OtpAuth extends StatefulWidget {
  OtpAuth({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _OtpAuthState createState() => _OtpAuthState();
}

class _OtpAuthState extends State<OtpAuth> {
  OtpFieldController otpController = OtpFieldController();

  final maskFormatter = new MaskTextInputFormatter(
  mask: '+# (###) ###-##-##', 
  type: MaskAutoCompletionType.lazy
);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor:  firstColor,
        child: Icon(Icons.cleaning_services, color: secondColor), 
        onPressed: () {
          otpController.clear();
        },
      ),
      body: Center(
        child: Column(
            children: [
            SizedBox(height: 50),
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
                keyboardType: TextInputType.number, 
                inputFormatters: [maskFormatter],
                cursorColor: secondColor,
                decoration: InputDecoration(
                  focusColor: secondColor,
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
            SizedBox(height: 20),

            TextButton(onPressed: () {}, child: Text('Send code', style: TextStyle(color: secondColor),),),
            
            OTPTextField(
                controller: otpController,
                length: 5,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 45,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 15,
                style: TextStyle(fontSize: 17),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);
                }),

                GestureDetector(
                     onTap: () {
                
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 70),
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
                    "VERIFY",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ),

                TextButton(onPressed: () { Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen()));},
                           child: Text('Back to Login Page', style: TextStyle(color: secondColor),))
          ],
        ),
      ),
    );
  }
}
