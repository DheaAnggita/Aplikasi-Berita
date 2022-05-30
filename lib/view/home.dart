import 'package:aplikasiberita/component/list.dart';
import 'package:aplikasiberita/model/articlemodel.dart';
import 'package:aplikasiberita/service/apiservice.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
        backgroundColor: Colors.blue,
      ),

      //memanggil api service
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          //cek
          if (snapshot.hasData) {
            //list artikel
            List<Article> articles = snapshot.data;
            return ListView.builder(
              //membuat custom List tile
              itemCount: articles.length,
              itemBuilder: (context, index) =>
                  customListTile(articles[index], context),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
