// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:path_way_flu/app/pages/student/pages/subcription%20model/ui/subcription_detailepage.dart';

// class BuildMainCardSubcirption extends StatelessWidget {
//   final String image;
//   final String subjuct;
//   final String date;
//   final String rate;

//   const BuildMainCardSubcirption({
//     super.key,
//     required this.image,
//     required this.subjuct,
//     required this.date,
//     required this.rate,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const SubcriptionDeatilePage()))  
//       },
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         height: 70,
//         decoration: BoxDecoration(
//             color:Theme.of(context).colorScheme.primary,
//             border: Border.all(width: 1, color: Theme.of(context).colorScheme.secondary),
//             borderRadius: BorderRadius.circular(30)),
//         child: Padding(
//           padding: const EdgeInsets.only(right: 20, left: 20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               CircleAvatar(
//                 radius: 25,
//                 backgroundImage: AssetImage(image),
//               ),
//               const SizedBox(width: 15),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     subjuct,
//                     style: GoogleFonts.quicksand(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const Text("Nov 24,2023"),
//                 ],
//               ),
//               const Spacer(),
//               Text(
//                 rate,
//                 style: GoogleFonts.aBeeZee(
//                   fontSize: 30,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


