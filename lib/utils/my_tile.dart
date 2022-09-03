import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final Color colour;
  final String title;
  final String subtitle;
  final IconData icon;

  const MyTile(
      {Key? key,
      required this.colour,
      required this.title,
      required this.subtitle,
      required this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
      child: ListTile(
        leading: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: colour,
                borderRadius: BorderRadius.circular(15.0),
                shape: BoxShape.rectangle),
            child: Icon(
              icon,
              color: Colors.white,
            )),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(
          Icons.chevron_right_sharp,
          color: Colors.grey,
          size: 35,
        ),
      ),
    );
  }
}
