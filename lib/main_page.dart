import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:placeholder/body_page.dart';
import 'package:placeholder/repo.dart';
import 'package:provider/provider.dart';

class MainPages extends StatefulWidget {
  @override
  _MainPagesState createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<AppRepo>().getPost();
  }

  @override
  Widget build(BuildContext context) {
    var _appRepo = Provider.of<AppRepo>(context);
    return Scaffold(
      body: Container(
        child: ListView.separated(
          shrinkWrap: true,
          //listenin uzunlığu kadar veri döndürür
          itemCount: _appRepo.postList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Body(
                        index: index,
                      ),
                    ));
              },
              child: Container(
                child: Center(
                    child: Text(_appRepo.postList[index]['title'].toString())),
              ),
            );
          },

          separatorBuilder: (context, index) => Divider(),
        ),
      ),
    );
  }
}
