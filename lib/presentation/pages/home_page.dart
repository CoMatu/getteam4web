import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          onPressed: () async{
/*            fs = firestore();
            var res = await fs.collection('persons').get();
            res.forEach((d) => print(d.data()));
            */


          },
          child: Text('Get people list'),
        ),
      ),
    );
  }
}