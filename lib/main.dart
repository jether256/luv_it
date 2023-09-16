
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:luv_it/screens/dashboard.dart';
import 'constants/color.dart';
import 'firebase_options.dart';


main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luvit',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        backgroundColor: backGround,
        useMaterial3: true,
      ),
      home: const Dashboard(),
    );
  }
}


