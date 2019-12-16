import 'package:flutter/material.dart';
import 'package:getteam4web/data/datasourses/remote_data_source.dart';

class LoginPage extends StatelessWidget {
  GetteamRemoteDataSourceImpl dataSourceImpl;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () async {
          dataSourceImpl = GetteamRemoteDataSourceImpl();
          dataSourceImpl.getAllPeople();
        },
        child: Text('TEXT'),
        color: Colors.teal,
      ),
    );
  }
  
}