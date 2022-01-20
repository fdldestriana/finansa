// import 'package:finansa/widgets/custombutton.dart';
// import 'package:flutter/material.dart';
// import 'package:finansa/sizeconfig.dart';

// class GetStarted extends StatelessWidget {
//   const GetStarted({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     return Scaffold(
//       body: Container(
//         width: SizeConfig.screenWidth,
//         height: SizeConfig.screenHeight,
//         decoration: const BoxDecoration(color: Colors.white),
//         child: Column(
//           children: <Widget>[
//             SizedBox(height: SizeConfig.blockSizeVertical! * 12),
//             Image.asset(
//               'assets/images/get_started.png',
//               width: SizeConfig.blockSizeHorizontal! * 82,
//               height: SizeConfig.blockSizeVertical! * 49,
//             ),
//             SizedBox(
//               height: SizeConfig.blockSizeVertical! * 7,
//             ),
//             Container(
//               margin: EdgeInsets.only(
//                   left: SizeConfig.blockSizeHorizontal! * 8,
//                   right: SizeConfig.blockSizeHorizontal! * 33),
//               child: Text(
//                 'Effortless.\nIntegrated app.',
//                 softWrap: false,
//                 textAlign: TextAlign.start,
//                 style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: SizeConfig.safeBlockHorizontal! * 7,
//                     fontWeight: FontWeight.w600,
//                     color: const Color(0xFF111111)),
//               ),
//             ),
//             SizedBox(height: SizeConfig.blockSizeVertical! * 6),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 const CustomButton(text: 'Sign In'),
//                 SizedBox(
//                   width: SizeConfig.blockSizeHorizontal! * 1,
//                 ),
//                 const CustomButton(text: 'Get Started'),
//               ],
//             ),
//             SizedBox(
//               height: SizeConfig.blockSizeVertical! * 9,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
