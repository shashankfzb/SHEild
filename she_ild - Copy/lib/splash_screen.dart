import 'package:flutter/material.dart';
import 'package:she_ild/main.dart';
// import 'package:splash_screen/main.dart';

// void main() {
//   runApp(Splash());
// }

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState(){
    super.initState();
    // _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 2000), (){});
    var pushReplacement = Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: 'Demo')));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'PLEASE APP',
        theme: ThemeData(
            primaryColor: Colors.green,
            primarySwatch: Colors.blue
        ),
        home: Scaffold(
            body: Center(
                child: Container(
                    child: Text('SHE-ild', style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ))
                )
            )
        )
    );
  }
}
