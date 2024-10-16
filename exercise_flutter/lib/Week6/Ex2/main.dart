// import 'package:exercise_flutter/Week6/Ex2/Data/profile_data.dart';
// import 'package:exercise_flutter/Week6/Ex2/model/profile_title_model.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Money App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ProfileApp(
//         data: ronanProfile,
//         // data: ProfileData(
//         //   avatarUrl: 'assets/vichet.jpg',
//         //   name: "Mengthong",
//         //   position: 'Flutter Dev',
//         //   tiles: [
//         //     TileData(
//         //       icon: Icons.call,
//         //       title: "Mengthong",
//         //       value: "+855 78785339",
//         //     ),
//         //     TileData(
//         //       icon: Icons.location_on_outlined,
//         //       title: "CADT",
//         //       value: "+855 12959166",
//         //     ),
//         //   ],
//         // ),
//       ),
//     );
//   }
// }

// class ProfileApp extends StatelessWidget {
//   const ProfileApp({
//     super.key,
//     required this.data,
//   });
//   final ProfileData data;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xff12284c),
//         title: Text(
//           "Profile",
//           style: GoogleFonts.poppins(
//             color: Colors.white,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 20,
//               ),
//               GestureDetector(
//                 child: const CircleAvatar(
//                   radius: 40,
//                   backgroundImage: AssetImage('assets/vichet.jpg'),
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 data.name,
//                 style: GoogleFonts.poppins(
//                     fontSize: 15, fontWeight: FontWeight.w600),
//               ),
//               Text(
//                 data.position,
//                 style: GoogleFonts.poppins(
//                     fontSize: 13, fontWeight: FontWeight.w400),
//               ),
//               ...data.tiles.map(
//                 (e) => Padding(
//                   padding: const EdgeInsets.only(
//                     top: 13,
//                   ),
//                   child: ProfileTitle(
//                       icon: e.icon, title: e.title, description: e.value),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ProfileTitle extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String description;
//   const ProfileTitle({
//     super.key,
//     required this.icon,
//     required this.title,
//     required this.description,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       margin: const EdgeInsets.symmetric(horizontal: 20),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(6),
//           color: Colors.white,
//           boxShadow: const [
//             BoxShadow(
//               color: Color.fromARGB(9, 0, 0, 0),
//               spreadRadius: 5,
//               blurRadius: 10,
//             )
//           ]),
//       child: Row(
//         children: [
//           const SizedBox(
//             width: 15,
//           ),
//           Icon(icon),
//           const SizedBox(
//             width: 15,
//           ),
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 title,
//                 style: GoogleFonts.poppins(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 14,
//                 ),
//               ),
//               Text(
//                 description,
//                 style: GoogleFonts.poppins(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 12,
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:exercise_flutter/Week6/Ex2/Data/profile_data.dart';
import 'package:exercise_flutter/Week6/Ex2/model/profile_title_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileApp(profileData: ronanProfile),
  ));
}

const Color mainColor = Color(0xff5E9FCD);

class ProfileApp extends StatelessWidget {
  final ProfileData profileData;
  const ProfileApp({super.key, required this.profileData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor.withAlpha(100),
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text(
          'CADT student Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(profileData.avatarUrl),
            ),
            const SizedBox(height: 20),
            Text(
              profileData.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
            Text(
              profileData.position,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            ...profileData.tiles.map((tile) => ProfileTile(
                  icon: tile.icon,
                  title: tile.title,
                  data: tile.value,
                )),
          ],
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.icon,
    required this.title,
    required this.data,
  });

  final IconData icon;
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: ListTile(
          leading: Icon(icon, color: mainColor),
          title: Text(title),
          subtitle: Text(data),
        ),
      ),
    );
  }
}