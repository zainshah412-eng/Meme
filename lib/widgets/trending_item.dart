import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/trending_model.dart';

class ItemWidgets extends StatelessWidget {
  // final Item item;
  //
  // const ItemWidgets({Key? key, required this.item})
  //     : assert(item != null),
  //       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: () {},
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/image1.png'),
        ),
        title: Text("Little Mermaid"),
        subtitle: Text(
          "Pretty much all experts said they are gone...",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 17,
          ),
        ),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
