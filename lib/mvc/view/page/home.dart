import 'package:elm/constant/color.dart';
import 'package:elm/mvc/view/page/admin_login.dart';
import 'package:elm/mvc/view/page/quick_donate.dart';
import 'package:elm/mvc/view/page/site_map.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/value.dart';
import '../../controller/home_controller.dart';
import '../widget/custom_widget.dart';
import 'general_donation.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());


  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: white,
                padding:
                    const EdgeInsets.symmetric(horizontal:100, vertical: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/Untitled-1.png', fit: BoxFit.cover),
                    const Text('Ibn Umer narrated:',
                        style: TextStyle(
                            fontSize: fontSmall, color: primaryText)),
                    const Text(
                        "\"Allah's Messenger, Abu Bakr, and \nUmar would pray during the two Eid \nbefore the Khutbah, then they would \ngive the Khutbah.\"",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: fontSmall,
                            letterSpacing: 1.4,
                            color: primaryText,
                            fontWeight: FontWeight.bold)),
                    const Text('Jami` at-Tirmighi 531',
                        style: TextStyle(
                            fontSize: fontMediumExtra, color: primaryText)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/logoo.png',
                            height: 70, fit: BoxFit.cover),
                        const SizedBox(width: 8),
                        const Text(
                          "EAST LONDON MOSQUE & \nLONDON MUSLIM CENTRE",
                          style: TextStyle(
                              fontSize: fontSmall,fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                      ],
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: primaryColor,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 50),
                          SizedBox(
                            height: 66,
                            width: 46,
                            child: iconTextBtn(
                                'assets/Donate Icon.png',
                                'DONATE',
                                Colors.transparent,
                                white, onPressed: () {
                              Get.to(const QuickDonate());
                            }),
                          ),
                          const SizedBox(width: 50),
                          SizedBox(
                            height: 66,
                            width: 46,
                            child: iconTextBtn('assets/Map Icon.png', 'MAP',
                                Colors.transparent, white, onPressed: () {
                              Get.to(()=> SiteMap());
                            }),
                          ),
                          const SizedBox(width: 50),
                          SizedBox(
                            height:66,
                            width: 46,
                            child:Column(
                              children: [
                                MaterialButton(

                                  elevation: 0,
                                  height: 50,
                                  padding: EdgeInsets.zero,
                                  color: white,
                                  onPressed: (){
                                    Get.to(AdminLogin());
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child:const Icon(Icons.verified_user_outlined , color: primaryColor,),
                                ),
                                SizedBox(height: 5),
                                Expanded(child: Text("ADMIN", style: TextStyle(color: white, fontSize: fontVerySmall))),
                              ],
                            )

                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child:
                      // Obx(() {
                      //   return
                          ListView.builder(
                            //itemCount: homeController.projectList.length,
                            itemCount: 6,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            itemBuilder: (context, index) {
                              return Container(
                                height: height/4,
                                margin: const EdgeInsets.only(bottom: 15.0),
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height:height/5,
                                        width:width/10,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/new 1.png',
                                            height: Size.infinite.height,
                                            width: Size.infinite.width,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 15),
                                      Expanded(
                                        flex: 6,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: SingleChildScrollView(
                                                scrollDirection: Axis.vertical,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text(
                                                      'Mosque Project',
                                                      style:  TextStyle(
                                                          fontSize: fontSmall,
                                                          letterSpacing: 1,
                                                          color: primaryColor,

                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 6,),
                                                    Text(
                                                        'Rebuild the Dome',
                                                        style: TextStyle(
                                                            fontSize:
                                                                fontMedium,
                                                            letterSpacing: 1.1,
                                                            color: primaryText,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    Text(
                                                        "Dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, \nconsectetuer adipiscing elit, sed diam nonummy nibh euismod. \n Dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, \nconsectetuer adipiscing elit, sed diam nonummy nibh euismod.\nDolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, \nconsectetuer adipiscing elit, sed diam nonummy nibh euismod.",
                                                        maxLines: 2,
                                                        style: TextStyle(
                                                            fontSize:
                                                                fontVerySmall,
                                                            letterSpacing: 0.8,
                                                            wordSpacing: 1,
                                                            color: primaryText,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    SizedBox(height: 6,),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [

                                                Container(
                                                  height: 40,
                                                  width: width/10,
                                                  decoration: BoxDecoration(
                                                    color: primaryBackground,
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          flex: 3,
                                                          child: ClipRRect(
                                                            borderRadius: BorderRadius.circular(10),
                                                            child: Image.asset(
                                                              'assets/Icon.png',
                                                              height: Size.infinite.height,
                                                              width: Size.infinite.width,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(width: 10),
                                                        Expanded(
                                                          flex: 7,
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: const[
                                                              Text(maxLines: 1,
                                                                'Target Amount',
                                                                style: TextStyle(fontSize: 11, color: textSecondary, fontWeight: FontWeight.bold),
                                                              ),
                                                              Text('£30,000',
                                                                  style: TextStyle(
                                                                      fontSize: fontVerySmall,
                                                                      color: primaryText,
                                                                      fontWeight: FontWeight.bold)),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),

                                                Container(
                                                  height: 40,
                                                  width: width/10,
                                                  decoration: BoxDecoration(
                                                    color: primaryBackground,
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          flex: 3,
                                                          child: ClipRRect(
                                                            borderRadius: BorderRadius.circular(10),
                                                            child: Image.asset(
                                                              'assets/Icon.png',
                                                              height: Size.infinite.height,
                                                              width: Size.infinite.width,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(width: 10),
                                                        Expanded(
                                                          flex: 7,
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Text(maxLines: 1,
                                                                'Zakat',
                                                                style: const TextStyle(fontSize: 11, color: textSecondary, fontWeight: FontWeight.bold),
                                                              ),
                                                              Text('Eligible',
                                                                  style: const TextStyle(
                                                                      fontSize: fontVerySmall,
                                                                      color: primaryText,
                                                                      fontWeight: FontWeight.bold)),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),

                                                // cartBottomItem('Zakat', homeController.projectList.value[index].zakat),
                                                // cartBottomItem(
                                                //     'Zakat', 'Eligible'),
                                                SizedBox(
                                                    height: 40,
                                                    width: width/10,
                                                    child: normalButton(
                                                        "Donate Now",
                                                        alternate,
                                                        white, onPressed: () {
                                                      Get.to(const GeneralDonation());
                                                      // Get.to(GeneralDonation(
                                                      //     homeController
                                                      //         .projectList
                                                      //         .value[index]));
                                                    })),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            // });
                      }),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }

  /*
  Widget cartBottomItem(String type, String amount) {
    return Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
        color: primaryBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/Icon.png',
                  height: Size.infinite.height,
                  width: Size.infinite.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(maxLines: 1,
                    type,
                    style: const TextStyle(fontSize: 11, color: textSecondary, fontWeight: FontWeight.bold),
                  ),
                  Text('$amount',
                      style: const TextStyle(
                          fontSize: fontVerySmall,
                          color: primaryText,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  */
}
