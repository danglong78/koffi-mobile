
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key,required this.tabController}) : super(key: key);
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("DANH SÁCH HÓA ĐƠN",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w600
          )),
      actions: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height: 10.0,),
            SvgPicture.asset(
              "assets/svg/filter_icon.svg",
              height: 24.0,
              width: 24.0,
            ),
            const Text(
              "Lọc",
              style: TextStyle(color: Colors.black, fontSize: 14.0,fontWeight: FontWeight.w500),
            )
          ],
        ),
        SizedBox(width: 18.0)
      ],
      automaticallyImplyLeading: false,
      elevation: 2.0,
      backgroundColor: Colors.white,
      bottom: TabBar(
        padding: EdgeInsets.only(right: 140.0, top: 0.0),
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 4.0,
        indicator: MaterialIndicator(
            topLeftRadius: 4.0,
            topRightRadius: 4.0,
            color: Theme.of(context).primaryColor),
        labelPadding: EdgeInsets.only(bottom: 4.0),
        labelColor: Theme.of(context).colorScheme.primaryVariant,
        unselectedLabelColor: Color(0xff959595),
        unselectedLabelStyle: TextStyle(fontSize: 16.0),
        labelStyle: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,height: 2.0),
        controller: tabController,
        tabs: [
          Text("Tất cả"),
          Text("Đã ký"),
          Text("Chờ ký"),
        ],
      ),
    );
  }
}
