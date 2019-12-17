import 'package:flutter/material.dart';
import 'package:getteam4web/presentation/provider/people_model.dart';
import 'package:provider/provider.dart';
import 'core/auth/auth_service.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PeopleModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthService().handleAuth()
    );
  }
}
