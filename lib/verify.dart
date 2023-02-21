// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobilenumbersignup/phone.dart';
import 'package:pinput/pinput.dart';

class MyVefityScreen extends StatefulWidget {
  const MyVefityScreen({super.key});

  @override
  State<MyVefityScreen> createState() => _MyVefityScreenState();
}

class _MyVefityScreenState extends State<MyVefityScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,color: Colors.black,)),
        
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Center(
                      // ignore: prefer_const_constructors
                      child: Image(
                        image: AssetImage("assets/img1.png"),
                        width: 150,
                        height: 150,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      "Phone Verification",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      "We need to register your phone before getting started!",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Pinput(
                      length: 6,
                      // defaultPinTheme: defaultPinTheme,
                      // focusedPinTheme: focusedPinTheme,
                      // submittedPinTheme: submittedPinTheme,

                      showCursor: true,
                      onCompleted: (pin) => print(pin),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    // SizedBox(height: 20,),

                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Send the code"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green.shade600,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyPhoneScreen()),
                          );
                          },
                          
                          child: Text("Edit Your Mobile Number??")),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
