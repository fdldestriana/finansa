import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({Key? key}) : super(key: key);

  @override
  _CustomBottomAppBarState createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  Color _currentColor = const Color(0xFF111111);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: ImageIcon(
                    const AssetImage(
                        'assets/images/bottom_navigation_bar/fi_home.png'),
                    size: 24,
                    color: _currentColor),
                onPressed: () {
                  setState(() {
                    _currentColor = const Color(0xFF5F59E1);
                  });
                },
              ),
              IconButton(
                icon: ImageIcon(
                    const AssetImage(
                        'assets/images/bottom_navigation_bar/fi_calendar.png'),
                    size: 24,
                    color: _currentColor),
                onPressed: () {
                  setState(() {
                    _currentColor = const Color(0xFF5F59E1);
                  });
                },
              ),
              IconButton(
                icon: ImageIcon(
                    const AssetImage(
                        'assets/images/bottom_navigation_bar/fi_briefcase.png'),
                    size: 24,
                    color: _currentColor),
                onPressed: () {
                  setState(() {
                    _currentColor = const Color(0xFF5F59E1);
                  });
                },
              ),
              IconButton(
                icon: ImageIcon(
                    const AssetImage(
                        'assets/images/bottom_navigation_bar/fi_settings.png'),
                    size: 24,
                    color: _currentColor),
                onPressed: () {
                  setState(() {
                    _currentColor = const Color(0xFF5F59E1);
                  });
                },
              ),
            ],
          )),
    );
  }
}
