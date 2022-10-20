import 'package:flutter/material.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text('Hello User',style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
