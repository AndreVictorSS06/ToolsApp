import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('List Page')),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: const [
          Card(
            elevation: 4,
            child: ListTile(
              leading: Icon(
                Icons.earbuds_battery_outlined,
                color: Colors.deepPurple,
              ),
              title: Center(
                child: Text(
                  'André',
                  style: TextStyle(color: Colors.deepPurple),
                ),
              ),
              trailing: Icon(
                Icons.telegram,
                color: Colors.teal,
              ),
            ),
          ),
          Card(
            elevation: 4,
            child: ListTile(
              leading: Icon(
                Icons.anchor_outlined,
                color: Colors.deepPurple,
              ),
              title: Center(
                child: Text('André'),
              ),
              trailing: Icon(
                Icons.star,
                color: Colors.grey,
              ),
            ),
          ),
          Card(
            color: Colors.teal,
            elevation: 4,
            child: ListTile(
              leading: Icon(
                Icons.favorite_border_outlined,
                color: Colors.redAccent,
              ),
              title: Center(
                child: Text('André'),
              ),
              trailing: Icon(Icons.stay_primary_portrait_rounded,
                  color: Colors.deepPurple),
            ),
          ),
          Card(
            elevation: 4,
            
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/neymar.jpeg'),),
              title: Center(
                child: Text('André'),
              ),
              trailing: Icon(
                Icons.monetization_on_outlined,
                color: Colors.lightGreen,
              ),
            ),
          ),
        ],
      ),
    );
  }
}