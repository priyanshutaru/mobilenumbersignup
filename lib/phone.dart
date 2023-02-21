// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:mobilenumbersignup/verify.dart';

class MyPhoneScreen extends StatefulWidget {
  const MyPhoneScreen({super.key});

  @override
  State<MyPhoneScreen> createState() => _MyPhoneScreenState();
}

class _MyPhoneScreenState extends State<MyPhoneScreen> {
  TextEditingController countrycode = TextEditingController();

  @override
  void initState() {
    countrycode.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            // controller:countrycode,
                            child: TextField(
                              controller: countrycode,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                // hintText: "Enter Your Phone"
                              ),
                            ),
                          ),
                          Text(
                            "|",
                            style: TextStyle(fontSize: 35, color: Colors.grey),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Your Phone"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyVefityScreen()),
                          );
                        },
                        child: Text("Send the code"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green.shade600,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
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
