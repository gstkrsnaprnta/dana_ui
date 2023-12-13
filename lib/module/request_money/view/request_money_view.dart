import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../controller/request_money_controller.dart';

class RequestMoneyView extends StatefulWidget {
  const RequestMoneyView({Key? key}) : super(key: key);

  Widget build(context, RequestMoneyController controller) {
    controller.view = this;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Request Money",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              MdiIcons.helpCircleOutline,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Container(
              height: 230,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: primaryColor),
            ),
            Positioned(
              left: 30,
              right: 30,
              top: 135,
              child: Container(
                height: 1000,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      controller: ScrollController(),
                      scrollDirection: Axis.horizontal,
                      clipBehavior: Clip.none,
                      child: Container(
                        margin: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: List.generate(
                            10,
                            (index) {
                              return Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                margin: const EdgeInsets.only(right: 20),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      8.0,
                                    ),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      blurRadius: 24,
                                      offset: Offset(0, 11),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.wallet,
                                            size: 24.0,
                                            color: primaryColor,
                                          ),
                                          const SizedBox(
                                            width: 6.0,
                                          ),
                                          Text(
                                            "E-Money",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold,
                                                color: primaryColor),
                                          ),
                                          const SizedBox(
                                            height: 6.0,
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        "0812****3785",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 6.0,
                                      ),
                                      const Text(
                                        "KRISNA",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 6.0,
                                      ),
                                      QrImageView(
                                        data:
                                            'GUSTI KRISNA PRANATA-DATA-2023-KRISNA-PRANATA-GUSTI-KRISNA',
                                        version: QrVersions.auto,
                                        size: 300.0,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            foregroundColor: primaryColor,
                                            side: BorderSide(
                                              color: primaryColor,
                                            ),
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.zero,
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: const Text("SET AMOUNT"),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 12.0,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: const Text(
                                          "Share link to request now",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 12.0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12, right: 12),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    MdiIcons.whatsapp,
                                                    size: 32.0,
                                                    color: Colors.green,
                                                  ),
                                                  const Text(
                                                    "Whatsapp",
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    MdiIcons.wechat,
                                                    size: 32.0,
                                                    color: Colors.green,
                                                  ),
                                                  const Text(
                                                    "Line",
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Expanded(
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.more_horiz,
                                                    size: 32.0,
                                                    color: Color(0xffa3a3a3),
                                                  ),
                                                  Text(
                                                    "More",
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "SPLIT BILL",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      height: 200,
                      clipBehavior: Clip.antiAlias,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://plus.unsplash.com/premium_photo-1684331678124-ff62c82cef7a?q=80&w=3540&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            height: 300,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.black12,
                                    Colors.black26,
                                    Colors.black38,
                                  ]),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Split Bill With Everyone",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const Text(
                                  "Need to request money to multiple",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "People? sure thing!",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Split Bill",
                                    style: TextStyle(color: primaryColor),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<RequestMoneyView> createState() => RequestMoneyController();
}
