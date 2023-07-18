import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:meme/utils/routes.dart';

class OTPAuth extends StatefulWidget {
  const OTPAuth({super.key});

  @override
  State<OTPAuth> createState() => _OTPAuthState();
}

class _OTPAuthState extends State<OTPAuth> {
  var number = "0301-******";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                "Enter Your OTP below",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              const SizedBox(height: 30),
              Text(
                "An OTP has been sent to $number number",
                style: const TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              ),
              const SizedBox(height: 30),
              OtpTextField(
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
              const SizedBox(height: 90),
              // Container(
              //   height: 50.0,
              //   child: ElevatedButton(
              //     onPressed: () {},
              //     // shape: RoundedRectangleBorder(
              //     //     borderRadius: BorderRadius.circular(80.0)),
              //     // padding: EdgeInsets.all(0.0),
              //     child: InkWell(
              //       decoration: BoxDecoration(
              //           gradient: LinearGradient(
              //             colors: [Color(0xff374ABE), Color(0xff64B6FF)],
              //             begin: Alignment.centerLeft,
              //             end: Alignment.centerRight,
              //           ),
              //           borderRadius: BorderRadius.circular(12.0)),
              //       child: Container(
              //         constraints:
              //             BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
              //         alignment: Alignment.center,
              //         child: Text(
              //           "Login",
              //           textAlign: TextAlign.center,
              //           style: TextStyle(color: Colors.white),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              Container(
                height: 50.0,
                width: 220,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.orangeAccent, Colors.yellow]),
                    borderRadius: BorderRadius.circular(12.0)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.congratulations);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      padding: EdgeInsets.all(0.0)),
                  child: Text(
                    'Submit Now',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    // return MaterialApp(
    //   color: Colors.black,
    //   home: Scaffold(
    //     body: Center(
    //       child: Container(
    //         height: 44.0,
    //         decoration: BoxDecoration(
    //             gradient: LinearGradient(
    //                 colors: [Color.fromARGB(255, 2, 173, 102), Colors.blue])),
    //         child: ElevatedButton(
    //           onPressed: () {},
    //           style: ElevatedButton.styleFrom(
    //               backgroundColor: Colors.transparent,
    //               shadowColor: Colors.transparent),
    //           child: Text('Elevated Button'),
    //         ),
    //       ),
    //     ),
    //   ),
    // );

    // return Material(
    //   color: Colors.black,
    //   child: OtpTextField(
    //     numberOfFields: 4,
    //     borderColor: Colors.white38,
    //     cursorColor: Colors.yellow,
    //     focusedBorderColor: Colors.yellow,
    //     textStyle: TextStyle(color: Colors.yellow),
    //     //set to true to show as box or false to show as dash
    //     showFieldAsBox: true,
    //     //runs when a code is typed in
    //     onCodeChanged: (String code) {
    //       //handle validation or checks here
    //     },
    //     //runs when every textfield is filled
    //     onSubmit: (String verificationCode) {
    //       // showDialog(
    //       //     context: context,
    //       //     builder: (context) {
    //       //       return AlertDialog(
    //       //         title: Text("Verification Code"),
    //       //         content: Text('Code entered is $verificationCode'),
    //       //       );
    //       //     });
    //     }, // end onSubmit
    //   ),
    // );
  }
}
