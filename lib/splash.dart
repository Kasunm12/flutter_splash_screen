import 'package:flutter/material.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  get child => null;

  @override
  void initState() {
    super.initState();
    _navigatetohome();
    
  }

  _navigatetohome()async{

    await Future.delayed(Duration(milliseconds: 3000),(){});
    Navigator.pushReplacement(context,
     MaterialPageRoute(
       builder: (context)=>MyHomePage(
         title: 'EduLIFE Solutions',
         )));

  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              height: 200,
              width: 100,
              color: Colors.red,
            ),
            
            Container(

              child: Text('EduLIFE Solutions',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
      
    );
  }
}