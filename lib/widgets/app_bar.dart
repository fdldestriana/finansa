import 'package:finansa/sizeconfig.dart';
import 'package:flutter/material.dart';

AppBar appBar(BuildContext context) {
  SizeConfig().init(context);
  return AppBar(
    title: Text('Dashboard',
        style: TextStyle(
            color: const Color(0xFF111111),
            fontFamily: 'Poppins',
            fontSize: SizeConfig.blockSizeHorizontal! * 4.8,
            fontWeight: FontWeight.w500)),
    actions: [
      const Notification(),
      SizedBox(
        width: SizeConfig.blockSizeHorizontal! * 6.1,
      )
    ],
    backgroundColor: const Color(0xFFFAFAFA),
    bottomOpacity: 0,
    elevation: 0,
  );
}

class Notification extends StatefulWidget {
  const Notification({
    Key? key,
  }) : super(key: key);

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/notification.png',
      width: SizeConfig.blockSizeHorizontal! * 6.4,
      height: SizeConfig.blockSizeVertical! * 3,
    );
  }
}
