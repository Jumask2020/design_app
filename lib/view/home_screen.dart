import 'package:flutter/material.dart';
import 'package:shope_app_design/model/catagary.dart';
import 'package:shope_app_design/view/datalais.dart';

import '../utils/app_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Catagary> catagrys = [];
    catagrys.add(Catagary(name: 'Animal', image: 'assets/images/1.PNG'));
    catagrys.add(Catagary(name: 'Grooming', image: 'assets/images/2.PNG'));
    catagrys.add(Catagary(name: 'Food', image: 'assets/images/3.PNG'));
    catagrys.add(Catagary(name: 'Training', image: 'assets/images/4.PNG'));

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                title: Text(
                  'Flutter Design App',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: CircleAvatar(
                  backgroundColor: AppColor.buttomColor,
                ),
              ),
              const Text(
                'Welcome To The Pet Shop.\nlets find your pet',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width - 30,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Datalais(),
                        ));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.all(15),
                        height: MediaQuery.of(context).size.width - 50,
                        width: MediaQuery.of(context).size.width * 2 / 3,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF5395B7), Color(0xFF0B5D82)]),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '7 Waysto take\ncare of your\npet',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 90,
                            ),
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Icon(
                                  //   Icons.image,
                                  //   size: 70,
                                  //   color: Colors.white,
                                  // ),
                                  SizedBox(
                                    width: 70,
                                    height: 70,
                                    child: Image.asset(
                                      fit: BoxFit.fill,
                                      'assets/images/0.png',
                                      color: Colors.white,
                                    ),
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
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: catagrys.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 70,
                            decoration: BoxDecoration(
                                color: AppColor.catagryColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Image.asset(catagrys[index].image)),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            catagrys[index].name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 10,
                  bottom: 20,
                ),
                padding: const EdgeInsets.all(20),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF5395B7), Color(0xFF0B5D82)]),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Become a memeber,\n Flutter App',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: Colors.orange,
                          child: const Text(
                            'Join New',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: Image.asset(
                            fit: BoxFit.fill,
                            'assets/images/0.png',
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          'Image Hero',
                          style:
                              TextStyle(color: AppColor.scandary, fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
