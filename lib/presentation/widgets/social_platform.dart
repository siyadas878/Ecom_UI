import 'package:clothi/manager/image_manager.dart';
import 'package:flutter/material.dart';

class SocialPlatFormRegister extends StatelessWidget {
  const SocialPlatFormRegister({
    super.key, required this.faceBookFunction, required this.googleFunction,
  });
final Function()faceBookFunction;
final Function()googleFunction;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          2,
          (index) => Container(
                height: 50,
                width: 50,
                margin:const EdgeInsets.symmetric(horizontal: 17),
                decoration:const BoxDecoration(
                  color: Colors.white,
                  boxShadow:  [
                    BoxShadow(
                      color: Color.fromARGB(255, 187, 184, 184),
                      offset: Offset(-1.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    appImages.registerSocialImages[index],
                    height: 27,
                    width: 27,
                  ),
                ),
              )),
    );
  }
}