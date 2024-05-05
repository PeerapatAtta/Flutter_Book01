import 'package:app1403_restapi_photo/api.dart';
import 'package:app1403_restapi_photo/detail.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const App1403());
}

class App1403 extends StatelessWidget {
  const App1403({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<dynamic>> futurePhotos;

  var listPhotos = [];
  var _apiCalling = true;

  @override
  void initState() {
    super.initState();
    futurePhotos = apiGetPhotos();

    futurePhotos.then((value) {
      for (var p in value) {
        listPhotos.add(p);
      }
      setState(() => _apiCalling = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App1403/REST API/Photo'),
      ),
      body: Container(
          padding: EdgeInsets.all(15),
          child: _apiCalling
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemCount: listPhotos.length,
                  itemBuilder: (ctx, idx) => buildListTile(idx),
                  separatorBuilder: (ctx, idx) => Divider(
                    thickness: 1,
                    color: Colors.indigo,
                  ),
                )),
    );
  }

  Widget buildListView() => ListView.separated(
        itemCount: listPhotos.length,
        itemBuilder: (ctx, i) => buildListTile(i),
        separatorBuilder: (ctx, idx) => Divider(
          thickness: 1,
          color: Colors.indigo,
        ),
      );

  Widget buildListTile(int index) => ListTile(
        contentPadding: EdgeInsets.only(top: 5, bottom: 5),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(listPhotos[index]['thumbnailUrl']),
        ),
        title: Text(listPhotos[index]['title']),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailPage(photoId: listPhotos[index]['id'])),
          );
        },
  );
}
