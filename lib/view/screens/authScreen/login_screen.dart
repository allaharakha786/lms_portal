import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: SafeArea(child: Column(
    children: [ 
         Image.asset('assets/pngs/rafiki.png',height: 400,width: 400,),
         SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 15,bottom: 12),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text('Sign in',style: TextStyle(fontFamily:'bold',fontSize: 36),),
          ),
        )
    ],
   )),
    );
  }
}