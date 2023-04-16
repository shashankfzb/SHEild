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
    _navigatetohome();
  }
  double opacityLevel = 1.0;

    void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
    }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 2000), (){});
    _changeOpacity();    
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
                  padding: const EdgeInsets.all(16.0),
                  width: double.infinity,
                  height: double.infinity,
                  alignment: Alignment.center,
                    // child: Text('SHE-ild', style: TextStyle(
                    //     fontSize: 24,
                    //     fontWeight: FontWeight.bold
                    
                    // )
                    // ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("lib/Clip_path_group.png"),
                            // image: AssetImage('Clip_path_group.png'),
                            // image: FileImage(File("C:/Users/Udyan/StudioProjects/she_ild/lib/Clip_path_group.png")),
                            fit: BoxFit.cover
                        ),
                )
            )
        )
      )
    );
  }
}

class LogoFade extends StatefulWidget {
  @override
  createState() => LogoFadeState();
}

class LogoFadeState extends State<LogoFade> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: Duration(seconds: 3),
          child: FlutterLogo(),
        ),
        ElevatedButton(
          child: Text('Fade Logo'),
          onPressed: _changeOpacity,
        ),
      ],
    );
  }
}
