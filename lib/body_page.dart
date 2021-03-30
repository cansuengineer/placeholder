import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:placeholder/repo.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  final int index;

  const Body({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _appRepo = Provider.of<AppRepo>(context);
    return Scaffold(
      body: Container(child: Text(_appRepo.postList[index]['body'])),
    );
  }
}
