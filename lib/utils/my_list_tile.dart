// import 'package:flutter/material.dart';

// class MyListTile extends StatelessWidget {
//   const MyListTile(
//       {super.key,
//       required this.title,
//       required this.subtitle,
//       required this.imagePath});
//   final String imagePath;
//   final String title;
//   final String subtitle;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             height: 70,
//             padding: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//                 color: Colors.white, borderRadius: BorderRadius.circular(12)),
//             child: Image.asset(imagePath),
//           ),
//         ),
//         const SizedBox(
//           width: 20,
//         ),
//         Row(
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold, fontSize: 20),
//                 ),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 Text(
//                   subtitle,
//                   style: TextStyle(color: Colors.grey[600], fontSize: 16),
//                 )
//               ],
//             ),
//           ],
//         ),
//         const Icon(Icons.arrow_forward_ios)
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  const MyListTile(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.imagePath})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              shape: BoxShape.rectangle),
          child: Image.asset(
            imagePath,
            height: 90,
          ),
        ),
        // leading: CircleAvatar(
        //   backgroundImage: AssetImage(imagePath),
        //   radius: 30,
        //   backgroundColor: Colors.white,
        // ),
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
