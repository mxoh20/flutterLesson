import 'dart:convert';

import 'package:corona_app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:convecter';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var name="change my name";
  // TextEditingController _nameController=TextEditingController();
  var url = "https://jsonplaceholder.typicode.com/photos";

  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    fetchData();
  }

  fetchData() async {
    var resp = await http.get(url);
    data = jsonDecode(resp.body);
    print(resp.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("flutter one way"),
        ),
        body: data != null
            ? Container(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.network(data[index]["url"]),
                      title: Text(data[index]["title"]),
                      subtitle: Text("${data[index]["id"]}"),
                    );
                  },
                  itemCount: data.length,
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
        floatingActionButton: FloatingActionButton(
          tooltip: "click me",
          onPressed: () {
            setState(() {
              // name=_nameController.text;
            });
          },
          elevation: 4,
          child: Icon(Icons.add),
          hoverColor: Colors.white,
        ),
        drawer: MyDrawer());
  }
}
