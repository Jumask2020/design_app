import 'package:flutter/material.dart';
import 'package:shope_app_design/view/home_screen.dart';
import 'package:shope_app_design/utils/app_color.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.pramry,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF5395B7), Color(0xFF0B5D82)])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Pet Shope and\n    Care Tips ',
              style: TextStyle(
                  color: AppColor.scandary,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                Image.asset(
                  height: 100,
                  width: 100,
                  'assets/images/0.png',
                  color: AppColor.scandary,
                ),
                const Text(
                  'Image Here',
                  style: TextStyle(color: AppColor.scandary, fontSize: 14),
                )
              ],
            ),
            MaterialButton(

                // height: ,
                minWidth: 200,
                color: AppColor.buttomColor,
                child: const Text(
                  'Get Stared',
                  style: TextStyle(
                      color: AppColor.scandary, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ));
                })
          ],
        ),
      ),
    );
  }
}
