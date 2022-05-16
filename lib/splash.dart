import 'dart:async';
import 'package:flutter/material.dart';
import 'package:wallpaper/login.dart';


class splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return splashState();
  }
}

class splashState extends State<splash>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
        image:AssetImage('assets/images/s1.png'),
            fit: BoxFit.cover
      )
      ),
    );
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> MyLogin() ) );
  }

}