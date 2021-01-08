import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Text("welcome", style: TextStyle(fontSize: 25),).tr(),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.green,
                    onPressed: (){
                      context.locale = Locale('en', 'US');
                    },
                    child: Center(
                      child: Text("English", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.red,
                    onPressed: (){
                      context.locale = Locale('kr', 'KR');
                    },
                    child: Center(
                      child: Text("Korean", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.blue,
                    onPressed: (){
                      context.locale = Locale('jp', 'JP');
                    },
                    child: Center(
                      child: Text("Japan", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
