import 'package:flutter/material.dart';

class halamanDepan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toko Online'),
      ),
      body: barangList(gridCount: 2),
    );
  }
}

class barangList extends StatelessWidget {
  final int gridCount;
  barangList({required this.gridCount});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: <Widget>[
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Text('aku sayang kamu'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
