// import 'dart:html';

import 'dart:io';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:she_ild/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/first": (context) =>  MyHomePage(title: "DEMO yaar"),
        "/second": (context) => SecondScreen()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: Splash(),
      // home: AnimatedSplashScreen(

      //   duration: 3000,
      //   nextScreen: MyHomePage(title: 'DEMO'),
      //   splash: Image.asset('lib/Clip_path_group.png', scale: 100,),
      // splashIconSize: Image.asset('lib/Clip_path_group.png')._naturalResolution,
      // splash: SizedBox.expand(
      //   child: Container(
      //     padding: const EdgeInsets.all(16.0),
      //     width: double.infinity,
      //     height: double.infinity,
      //     alignment: Alignment.center,
      //     // height: ,
      //     decoration: BoxDecoration(
      //       image: DecorationImage(
      //           image: AssetImage("lib/Clip_path_group.png"),
      //           // image: AssetImage('Clip_path_group.png'),
      //           // image: FileImage(File("C:/Users/Udyan/StudioProjects/she_ild/lib/Clip_path_group.png")),
      //           fit: BoxFit.cover
      //       ) ,
      //     ),
      //   )
      // ),
      // backgroundColor: Colors.blue,
      // splashTransition: SplashTransition.fadeTransition,
      // pageTransitionType: PageTransitionType.scale,
      //   splash: Icons.home,


      // )
      // home: Screen()
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            // height: ,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/Clip_path_group.png"),
                  // image: AssetImage('Clip_path_group.png'),
                  // image: FileImage(File("C:/Users/Udyan/StudioProjects/she_ild/lib/Clip_path_group.png")),
                  fit: BoxFit.cover
              ) ,
            ),
          )
        );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });

  
  // }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 33, 134, 216),
      
      body: Center(
        // child: Column(
          // mainAxisSize: MainAxisSize.min,
        child: Stack(
          alignment: AlignmentDirectional.center,
          
          
          children: [

            Positioned(
              top: 585,

              child: OutlinedButton(            
                onPressed: (){ },
                // child: Image.asset("Group_1.png")
                child: Image.asset("assets/Group_1.png"),
                style: ButtonStyle(                
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.all(0)),
                    
                ),
                
              ),
              width: 250,
              height: 50,

            ),
            // SizedBox(
            
            //   child: OutlinedButton(            
            //     onPressed: (){ },
            //     // child: Image.asset("Group_1.png")
            //     child: Image.asset("assets/Group_1.png"),
            //     style: ButtonStyle(
                
            //       padding: MaterialStateProperty.all<EdgeInsets>(
            //         EdgeInsets.all(0)),
                    
            //     ),
                
            //   ),
            //   width: 250,
            //   height: 50,
              
            // ),
            Positioned(
              bottom: 100,
              child: OutlinedButton(
                child: Image.asset("assets/Register_button.png"),
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.all(0)),
                    
                ),
              ),
              width: 250,
              height: 50,
            ),
            // SizedBox.fromSize(
              
            //   // height: 20,
            //   size: Size(288, 100),
            //   child: OutlinedButton(
                
            //     onPressed: () {}, 
            //     child: Image.asset("assets/Register_button.png"),
            //   ),
              
            //   // width: 288,
            //   // height: 100,
            // )
              // ],
          ]
        ),
        
        // child: OutlinedButton(

        //   onPressed: (){
        //     Navigator.push(
        //       context, CupertinoPageRoute(builder: (context)=> SecondScreen()), 
        //       );
        //   },
        //   child: Image.asset("C:/Users/Udyan/StudioProjects/she_ild/lib/Group_1.png")
           
        // ),
          // ],
        ),
      );
    
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(

          onPressed: (){ },
          // child: Image.asset("Group_1.png")
          child: Text("ACCHA AISA ")
          
        ),
          // ],
        ),
      );
  }
}
