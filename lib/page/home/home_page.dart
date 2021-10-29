import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:koffi_dev/page/home/custom_app_bar.dart';
import 'package:koffi_dev/page/home/custom_bottom_app_bar.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  var isChecked = false;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: CustomAppBar(tabController: _tabController),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Theme.of(context).primaryColor.withOpacity(0.05),
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ]),
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      activeColor: Theme.of(context).primaryColor,
                      value: isChecked,
                      onChanged: (_) {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                    ),
                    Text(
                      "Tất cả",
                      style:
                          TextStyle(fontSize: 16.0, color: Color(0xff323232)),
                    ),
                  ],
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      side: BorderSide(width: 2, color:Theme.of(context).colorScheme.secondary),
                    ),
                    onPressed: () {},
                    child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      Text(
                        "Tùy chọn",style:TextStyle(fontWeight: FontWeight.w500,fontSize:16.0,height: 0.8)
                      ),
                      Icon(Icons.more_horiz)
                    ]))
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/svg/add_logo.svg"),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Tạo hóa đơn",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: SvgPicture.asset("assets/svg/add_icon.svg",),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
