import 'package:app1403_restapi_photo/api.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  int photoId;
  DetailPage({required this.photoId});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late Future<Map<String, dynamic>> photo;
  var _url = '';
  var _title = '';
  var _apiCalling = true;

  @override
  void initState() {
    super.initState();
    photo = apiGetPhoto(widget.photoId);
    photo.then((value) {
      setState(() {
        _url = value['url'];
        _title = value['title'];
        _apiCalling = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo ${widget.photoId}'),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        alignment: Alignment.topCenter,
        child: (_apiCalling ? CircularProgressIndicator() : columnDetail()),
      ),
    );
  }

  Widget columnDetail() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.network(_url),
      SizedBox(height: 10,),
      Text(_url,textScaleFactor: 1.2,style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic),),
      SizedBox(height: 20,),
      Text(_title,textScaleFactor: 1.6,),
    ],
  );
}
