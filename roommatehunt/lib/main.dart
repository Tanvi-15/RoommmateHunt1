import 'package:flutter/material.dart';
import 'package:roommatehunt/helper/helper_function.dart';
import 'package:roommatehunt/pages/auth/login_page.dart';
import 'package:roommatehunt/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}):super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool _isSignedIn = false;

  @override
  void initState() {
    super.initState();
    getUserLoggedInState();
  }

  getUserLoggedInState() async{
    await HelperFunctions.getUserLoggedInStatus().then((value){
      if(value!=null){
        _isSignedIn = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _isSignedIn? const HomePage(): const LoginPage(),
    );
  }
}

// firebase_auth,firebase_core,cloud_firestore,shared_preferences