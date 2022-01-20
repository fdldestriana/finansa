import 'package:flutter/material.dart';
import 'package:finansa/sizeconfig.dart';

class CustomButton extends StatefulWidget {
  final String text;
  const CustomButton({Key? key, required this.text}) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Color _currentButtonColor = const Color(0xFFEDEDF3);
  Color _currentTextColor = const Color(0xFF6F6F94);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      width: SizeConfig.blockSizeHorizontal! * 40,
      height: SizeConfig.blockSizeVertical! * 5,
      child: ElevatedButton(
          onPressed: () {
            setState(() {
              _currentTextColor = const Color(0xFFFFFFFF);
              _currentButtonColor = const Color(0xFF5F59E1);
            });
          },
          style: ElevatedButton.styleFrom(
              primary: _currentButtonColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)))),
          child: Text(
            widget.text,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: SizeConfig.safeBlockHorizontal! * 4,
                fontWeight: FontWeight.w500,
                color: _currentTextColor),
          )),
    );
  }
}
