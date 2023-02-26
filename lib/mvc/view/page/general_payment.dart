
import 'package:elm/constant/value.dart';
import 'package:elm/mvc/view/page/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/color.dart';
import '../widget/custom_widget.dart';
import 'card_machine_page.dart';

class GeneralPayment extends StatefulWidget {
  GeneralPayment(/*int wheelSelected, bool bool, int i,*/ {Key? key})
      : super(
          key: key,
        );

  @override
  State<GeneralPayment> createState() => _GeneralPaymentState();
}

class _GeneralPaymentState extends State<GeneralPayment> {
  var data = Get.arguments;
  String payType = "Card"; //if you want to set default value
  bool withGift = Get.arguments["bool"];
  num amount = Get.arguments["int"];
  num addAmount = (Get.arguments["int"] / 100) * 20;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: primaryColor,
      padding:  EdgeInsets.symmetric(horizontal: width/18, vertical: height/12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                elevation: 0,
                onPressed: () {
                  print('You are going to Home');
                  Get.to(Home());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      color: white,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'HOME',
                      style: TextStyle(color: white),
                    )
                  ],
                ),
              ),
              Image.asset(
                'assets/logoo.png',
                height: height/12,
                fit: BoxFit.cover,
                color: white,
              ),
            ],
          ),
          Expanded(
            child: Card(
              color: white,
              elevation: 5,
              margin: EdgeInsets.symmetric(horizontal: width/5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 72,
                      width: 300,
                      child: Theme(
                        data: ThemeData(
                            canvasColor: white,
                            colorScheme:
                                const ColorScheme.light(primary: primaryColor)),
                        child: Stepper(
                          type: StepperType.horizontal,
                          currentStep: 0,
                          elevation: 0,
                          margin: EdgeInsets.zero,
                          steps: const <Step>[
                            Step(
                              title: Text(''),
                              content: SizedBox(),
                              isActive: true,
                              state: StepState.disabled,
                            ),
                            Step(
                              title: Text(''),
                              content: SizedBox(),
                              isActive: false,
                              state: StepState.disabled,
                            ),
                            Step(
                              title: Text(''),
                              content: SizedBox(),
                              isActive: false,
                              state: StepState.disabled,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text('Your',
                        style: TextStyle(color: primaryColor, fontSize: 20)),
                    const Text('Saturday Circles',
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    const Text('Donation',
                        style: TextStyle(color: primaryColor, fontSize: 20)),
                    Column(
                      children: [
                        Container(
                          height: 30,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: primaryColor, width: 1.5)),
                          child: Row(
                            children: [
                              const Expanded(
                                  flex: 4,
                                  child: Text('TOTAL',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: primaryColor,
                                          fontSize: fontSmall))),
                              withGift
                                  ? Expanded(
                                      flex: 5,
                                      child: Container(
                                        height: double.maxFinite,
                                        decoration: const BoxDecoration(
                                            // color: textSecondary,
                                            border: Border(
                                          left: BorderSide(
                                              color: primaryColor, width: 1.5),
                                        )),
                                        alignment: Alignment.center,
                                        child: Text(
                                            '£$amount' ' + ' '£${addAmount.toInt()}',
                                            style: TextStyle(
                                                color: primaryColor,
                                                fontSize: fontSmall)),
                                      ),
                                    )
                                  : SizedBox(),

                             withGift? Expanded(
                                flex: 5,
                                child: Container(
                                  height: double.maxFinite,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8)),
                                      color: primaryColor,
                                      border: Border.all(
                                          color: primaryColor, width: 1.5)),
                                  alignment: Alignment.center,
                                  child: Text('£ ${amount + addAmount.toInt()}',
                                      style: const TextStyle(
                                          color: white, fontSize: fontSmall)),
                                ),
                              ) : Expanded(
                               flex: 5,
                               child: Container(
                                 height: double.maxFinite,
                                 decoration: BoxDecoration(
                                     borderRadius: const BorderRadius.all(
                                         Radius.circular(8)),
                                     color: primaryColor,
                                     border: Border.all(
                                         color: primaryColor, width: 1.5)),
                                 alignment: Alignment.center,
                                 child: Text('£ $amount',
                                     style: const TextStyle(
                                         color: white, fontSize: fontSmall)),
                               ),
                             ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),

                      ],
                    ),
                    withGift
                        ? Column(
                            children: [
                              SizedBox(
                                width: double.maxFinite,
                                height: height/16,
                                child: normalTextField(TextEditingController(),
                                    'Full Name', Icons.person),
                              ),
                              SizedBox(height: 5),
                              SizedBox(
                                width: double.maxFinite,
                                height: height/16,
                                child: normalTextField(TextEditingController(),
                                    'Email Address', Icons.mail),
                              ),
                              SizedBox(height: 5),
                              SizedBox(
                                width: double.maxFinite,
                                height: height/16,
                                child: normalTextField(TextEditingController(),
                                    'Home Address', Icons.location_on_rounded),
                              ),
                            ],
                          )
                        : const SizedBox(),
                    Column(
                      children: [
                        Container(
                          width: double.maxFinite,
                          height: height/16,
                          margin: const EdgeInsets.only(bottom: 6),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.payment,
                                color: white,
                              ),
                              const Text(
                                'Card Machine',
                                style: TextStyle(color: white),
                              ),
                              Radio(
                                value: "Card",
                                activeColor: white,
                                groupValue: payType,
                                onChanged: (value) {
                                  setState(() {
                                    payType = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                        width: double.maxFinite,
                        height: height/16,
                        child: normalButton("DONATE NOW", alternate, white,
                            onPressed: () {
                          Get.to(const CardPage());
                        })),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
