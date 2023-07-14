import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTPAuth extends StatefulWidget {
  const OTPAuth({super.key});

  @override
  State<OTPAuth> createState() => _OTPAuthState();
}

class _OTPAuthState extends State<OTPAuth> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: OtpTextField(
        numberOfFields: 4,
        borderColor: Colors.white38,
        cursorColor: Colors.yellow,
        focusedBorderColor: Colors.yellow,
        textStyle: TextStyle(color: Colors.yellow),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true,
        //runs when a code is typed in
        onCodeChanged: (String code) {
          //handle validation or checks here
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode) {
          // showDialog(
          //     context: context,
          //     builder: (context) {
          //       return AlertDialog(
          //         title: Text("Verification Code"),
          //         content: Text('Code entered is $verificationCode'),
          //       );
          //     });
        }, // end onSubmit
      ),
    );
  }
}
