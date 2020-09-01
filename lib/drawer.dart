import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 30,
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            arrowColor: Colors.red,
            accountName: Text("Mxolisi"),
            accountEmail: Text("mxoh@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80"),
            ),
          ),
          ListTile(
            title: Text("mxolisi"),
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.edit),
          )
        ],
      ),
    );
  }
}
