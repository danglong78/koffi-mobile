
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({Key? key}) : super(key: key);

  @override
  _CustomBottomAppBarState createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int currentTab = 0; // to keep track of active tab index

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                          "assets/svg/list_icon.svg",
                          color: currentTab == 0
                              ? Theme.of(context).primaryColor
                              : Color(0xff959595)
                      ),
                      Text(
                        'Danh sách',
                        style: TextStyle(fontSize: 14.0,
                            color: currentTab == 0
                                ? Theme.of(context).primaryColor
                                : Color(0xff959595)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height:30.0),
                Text("Tạo mới",style: TextStyle(color:Color(0xff959595),fontSize: 14.0)),

              ],
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                        "assets/svg/user_icon.svg",
                        color: currentTab == 1
                            ? Theme.of(context).primaryColor
                            : Color(0xff959595)
                    ),
                    Text(
                      'Tôi',
                      style: TextStyle(fontSize: 14.0,
                          color: currentTab == 1
                              ? Theme.of(context).primaryColor
                              : Color(0xff959595)
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
