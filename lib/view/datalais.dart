import 'package:flutter/material.dart';
import 'package:shope_app_design/utils/app_color.dart';

class Datalais extends StatelessWidget {
  const Datalais({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF5395B7), Color(0xFF0B5D82)]),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                          backgroundColor: Colors.white54,
                          child: Icon(
                            Icons.arrow_back,
                            color: AppColor.scandary,
                          )),
                      trailing: CircleAvatar(
                          backgroundColor: Colors.white54,
                          child: Center(
                            child: Image.asset(
                              'assets/images/hert.png',
                              width: 30,
                              height: 30,
                              color: AppColor.scandary,
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Image.asset(
                            height: 100,
                            width: 100,
                            'assets/images/0.png',
                            color: AppColor.scandary,
                          ),
                          const Text(
                            'Image Here',
                            style: TextStyle(
                                color: AppColor.scandary, fontSize: 14),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '7 Waysto take care\n of your pet',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  style: TextStyle(fontSize: 14),
                  '''There are a number of ways to care for pets at home, every animal is different, but in general the method can still be the same

If you have a pet, you definitely want your pet to be safe and comfortable at home.

In fact, it is not uncommon for owners to allow pets to roam in the house, usually dogs or cats.''')
            ],
          ),
        ),
      ),
    );
  }
}
