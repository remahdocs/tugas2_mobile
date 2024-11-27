// import 'package:flutter/material.dart';

// void main() {
//   runApp(AppUts());
// }

// class AppUts extends StatelessWidget {
//   const AppUts({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           leading: Padding(
//             padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
//             child: Image.asset(
//               'assets/images/food.png',
//             ),
//           ),
//           title: Text(
//             'FOODIE',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//           ),
//           actions: [
//             IconButton(
//               icon: Image.asset(
//                 'assets/icons/notification.png',
//                 width: 30,
//                 height: 30,
//               ),
//               onPressed: () {},
//             )
//           ],
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Halo, Resty',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//               ),
//               SizedBox(
//                 height: 8,
//               ),
//               Text(
//                 'How are you feeling today?',
//                 style: TextStyle(fontSize: 14),
//               ),
//               SizedBox(
//                 height: 8,
//               ),
//               Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [])
//             ],
//           ),
//         ));
//   }
// }
