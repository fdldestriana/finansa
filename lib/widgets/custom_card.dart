import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:finansa/sizeconfig.dart';

class CustomCard extends StatelessWidget {
  final Color color;
  final int balance;
  final int cardNumber;
  const CustomCard(
      {Key? key,
      required this.color,
      required this.balance,
      required this.cardNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal! * 6.4),
      width: SizeConfig.blockSizeHorizontal! * 80,
      height: SizeConfig.blockSizeVertical! * 23.4,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig.blockSizeVertical! * 3.7))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 3.7,
          ),
          Text('Current Balance',
              style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontFamily: 'Poppins',
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  fontWeight: FontWeight.w400)),
          SizedBox(height: SizeConfig.blockSizeVertical! * 0.5),
          Text(
            '\$$balance',
            style: TextStyle(
                color: const Color(0xFFFFFFFF),
                fontFamily: 'Poppins',
                fontSize: SizeConfig.blockSizeHorizontal! * 7.5,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical! * 4.9),
          Text('$cardNumber',
              style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontFamily: 'Poppins',
                  fontSize: SizeConfig.blockSizeHorizontal! * 6.4,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
