import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/image_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/presentation/widgets/container_icon.dart';
import 'package:clothi/presentation/widgets/search_bar_widget.dart';
import 'package:clothi/utils/utility_dimension.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: const Icon(
            FontAwesomeIcons.barsStaggered,
            color: Colors.black,
          ),
          title: Text(
            'Dashboard',
            style: appFonts.f16wBoldBlack,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.cartShopping,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon:
                    const Icon(FontAwesomeIcons.solidBell, color: Colors.black))
          ],
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              appSpaces.spaceForHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SearchBarWidget(
                    hint: '16 to 22 Jun,2023',
                    suffix: FontAwesomeIcons.calendar,
                  ),
                  ContainerIcon(
                    icon: FontAwesomeIcons.download,
                    iconColor: appColors.primaryDark,
                    insideColor: Colors.white,
                  )
                ],
              ),
              appSpaces.spaceForHeight20,
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      appSpaces.spaceForHeight20,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: appColors.grey)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(dashboardDatas[index].title,style: appFonts.f15w500Grey,),
                            Container(
                              height: screenHeight(context) * 0.12,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          dashboardDatas[index].img))),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 35,
                                  height: 35,
                                  child: Card(
                                      color: dashboardDatas[index].staus == 1
                                          ? Colors.red[200]
                                          : dashboardDatas[index].staus == 2
                                              ? Colors.green[200]
                                              : Colors.purple[200],
                                      child: Center(
                                          child: Icon(
                                        dashboardDatas[index].icon,
                                        size: 15,
                                      ))),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '${dashboardDatas[index].rating}K ',
                                          style:const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                                        ),
                                        
                                        Text(
                                          '${dashboardDatas[index].percent} %',
                                          style: TextStyle(
                                              color:
                                                  dashboardDatas[index].color),
                                        ),
                                      ],
                                    ),
                                     Text('Compare from last week',style: appFonts.f13grey,)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}

class Dashboard {
  int staus;
  String title;
  double rating;
  double percent;
  String img;
  IconData icon;
  Color color;
  Dashboard(
      {required this.percent,
      required this.title,
      required this.rating,
      required this.staus,
      required this.color,
      required this.icon,
      required this.img});
}

List<Dashboard> dashboardDatas = [
  Dashboard(
      percent: 4.2,
      title: 'Purchases',
      rating: 8.3,
      color: Colors.red,
      staus: 1,
      icon: FontAwesomeIcons.anglesUp,
      img: appImages.red),
  Dashboard(
      percent: 35,
      title: 'Income',
      rating: 2.7,
      color: Colors.green,
      staus: 2,
      icon: FontAwesomeIcons.anglesDown,
      img: appImages.green),
  Dashboard(
      percent: 2.2,
      title: 'Return',
      color: Colors.purple,
      rating: 1.3,
      icon: FontAwesomeIcons.equals,
      staus: 3,
      img: appImages.violet),
];
