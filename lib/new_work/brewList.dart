import 'package:flutter/material.dart';
import 'package:fypproject/models/Brew.dart';
import 'package:provider/provider.dart';

import 'brewTitle.dart';


class brewList extends StatefulWidget {
  @override
  _brewListState createState() => _brewListState();
}

class _brewListState extends State<brewList> {
  @override
  Widget build(BuildContext context) {
    final brews = Provider.of<List<Brew>>(context) ?? [];

    return ListView.builder(
      itemCount: brews.length,
      itemBuilder: (context, index) {
        return brewTile(brew: brews[index]);
      },
    );
  }
}
