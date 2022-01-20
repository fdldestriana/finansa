import 'package:finansa/constant.dart';
import 'package:finansa/models/model.dart';
import 'package:finansa/sizeconfig.dart';
import 'package:finansa/widgets/app_bar.dart';
import 'package:finansa/widgets/bottom_app_bar.dart';
import 'package:finansa/widgets/custom_card.dart';
import 'package:finansa/widgets/custom_menu.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);
  final List<CardModel> data = [];
  final List<MenuModel> menus = [];

  void getPostData() {
    List<dynamic> responseList = cardConstant;
    for (var element in responseList) {
      data.add(CardModel.fromJson(element));
    }
    List<dynamic> responseMap = menuConstant;
    for (var menu in responseMap) {
      menus.add(MenuModel.fromJson(menu));
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    getPostData();
    return Scaffold(
        backgroundColor: const Color(0xFFFAFAFA),
        appBar: appBar(context),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListViewDashboard(data: data),
            SizedBox(height: SizeConfig.blockSizeVertical! * 3.7),
            Container(
              margin:
                  EdgeInsets.only(left: SizeConfig.blockSizeVertical! * 6.4),
              child: Text(
                'Main Menus',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: const Color(0xFF111111),
                    fontFamily: 'Poppins',
                    fontSize: SizeConfig.blockSizeHorizontal! * 4.8,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical! * 2.2),
            GridViewDashboard(menus: menus),
          ],
        ),
        bottomNavigationBar: const CustomBottomAppBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            isExtended: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Image.asset(
              'assets/images/bottom_navigation_bar/btn_scan.png',
              fit: BoxFit.cover,
            ),
            onPressed: () {}));
  }
}

class GridViewDashboard extends StatelessWidget {
  const GridViewDashboard({
    Key? key,
    required this.menus,
  }) : super(key: key);

  final List<MenuModel> menus;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: SizeConfig.blockSizeHorizontal! * 86.9,
        height: SizeConfig.blockSizeVertical! * 32.5,
        child: Expanded(
          child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
              ),
              itemCount: menus.length,
              itemBuilder: (context, index) {
                return CustomMenu(
                    menu: menus[index].menu!,
                    imagePath: menus[index].imagePath!);
              }),
        ),
      ),
    );
  }
}

class ListViewDashboard extends StatelessWidget {
  const ListViewDashboard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<CardModel> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockSizeVertical! * 32.5,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeVertical! * 6.4,
              vertical: SizeConfig.blockSizeVertical! * 3.7),
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: SizeConfig.blockSizeHorizontal! * 5.3,
            );
          },
          itemBuilder: (context, index) {
            return CustomCard(
                color: data[index].color!,
                balance: data[index].balance!,
                cardNumber: data[index].cardNumber!);
          }),
    );
  }
}
