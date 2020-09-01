import 'package:flutter/material.dart';

class nameCard extends StatelessWidget {
  const nameCard({
    Key key,
    @required this.name,
    @required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String name;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset('assets/flutter_wall.png'),
          SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _nameController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your name",
                labelText: "first name",
              ),
            ),
          )
        ],
      ),
    );
  }
}
