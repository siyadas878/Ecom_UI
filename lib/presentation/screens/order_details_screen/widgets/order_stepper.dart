import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/image_manager.dart';
import 'package:clothi/utils/utility_dimension.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';



class OrderStepper extends StatelessWidget {
  const OrderStepper({super.key});

  @override
  Widget build(BuildContext context) {
    const int activeStep = 1;
    return
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EasyStepper(
            activeStep: activeStep,
            direction: Axis.vertical,
            activeStepTextColor: Colors.black87,
            finishedStepTextColor: Colors.black87,
            lineStyle: LineStyle(
                unreachedLineColor: Colors.grey.withOpacity(0.5),
                finishedLineColor: appColors.primaryDark,
                defaultLineColor: Colors.grey.withOpacity(0.5),
                lineLength: 50,
                lineThickness: 3,
                lineType: LineType.normal
            ),
            internalPadding: 0,
            showLoadingAnimation: false,
            stepRadius: 15,
            showStepBorder: false,
            steps: [
              EasyStep(
                customStep: CircleAvatar(
                  radius: 15,
                  backgroundColor:  activeStep >= 0 ? appColors.primaryDark :
                  Colors.grey.withOpacity(0.5),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Icon(Icons.done,color: Colors.white,)
                  ),
                ),
              ),
              EasyStep(
                customStep: CircleAvatar(
                  radius: 15,
                  backgroundColor:  activeStep >= 1 ? appColors.primaryDark :
                  Colors.grey.withOpacity(0.5),
                  child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(Icons.done,color: Colors.white,)
                  ),
                ),
              ),
              EasyStep(
                customStep: CircleAvatar(
                  radius: 15,
                  backgroundColor:  activeStep >= 2 ? appColors.primaryDark :
                  Colors.grey.withOpacity(0.5),
                  child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(Icons.done,color: Colors.white,)
                  ),
                ),
              ),
              EasyStep(
                customStep: CircleAvatar(
                  radius: 15,
                  backgroundColor:  activeStep >= 3 ? appColors.primaryDark :
                  Colors.grey.withOpacity(0.5),
                  child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(Icons.done,color: Colors.white,)
                  ),
                ),
              ),


            ],
            onStepReached: (index) {}
    ),
          SizedBox(
            width: screenWidth(context)*0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomStepperListTile(
                  title: "Order Placed",
                  imageUrl: appImages.icon4,
                  time: "23 Aug 2023, 03:12 PM",
                ),
                CustomStepperListTile(
                  title: "In Progress",
                  imageUrl: appImages.icon1,
                  time: "23 Aug 2023, 05:30 PM",
                ),
                CustomStepperListTile(
                  title: "Shipped",
                  imageUrl: appImages.icon2,
                  time: "Expected 05 Sep 2023",
                ),
                CustomStepperListTile(
                  title: "Delivered",
                  imageUrl: appImages.icon3,
                  time: "Expected 07 Sep 2023",
                ),
              ],
            ),
          )
        ],
      );
  }
}


class CustomStepperListTile extends StatelessWidget {
  final String title;
  final String time;
  final String imageUrl;
  const CustomStepperListTile({super.key, required this.title,
    required this.time, required this.imageUrl});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 130,

      child: ListTile(
        dense: true,
        contentPadding: EdgeInsets.zero,
        title: Text(title,style: appFonts.f15w500Grey,),
        subtitle: Text(time,style: appFonts.f15w500Grey,),
        trailing: Image.asset(imageUrl,height: 25,),
      ),
    );
  }
}