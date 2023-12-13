import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../controller/transaction_history_controller.dart';

class TransactionHistoryView extends StatefulWidget {
  const TransactionHistoryView({Key? key}) : super(key: key);

  Widget build(context, TransactionHistoryController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          shape: Border(bottom: BorderSide(color: primaryColor)),
          elevation: 0.0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30.0),
            child: TabBar(
              indicatorColor: Colors.transparent,
              onTap: (index) {
                print("index: $index");
                controller.updateIndex(index);
              },
              tabs: [
                Tab(
                  child: Text(
                    "In Progress",
                    style: TextStyle(
                      color: controller.selectedIndex == 1
                          ? Colors.white
                          : Colors.white,
                      fontWeight: controller.selectedIndex == 0
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Completed",
                    style: TextStyle(
                      color: controller.selectedIndex == 0
                          ? Colors.white
                          : Colors.white,
                      fontWeight: controller.selectedIndex == 1
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          title: const Text(
            'Transaction History',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19.0,
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: primaryColor,
                ),
                transform: Matrix4.translationValues(0.0, -1, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: Icon(
                        MdiIcons.triangle,
                        size: 12.0,
                        color: controller.selectedIndex == 0
                            ? Colors.white
                            : Colors.transparent,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        MdiIcons.triangle,
                        size: 12.0,
                        color: controller.selectedIndex == 1
                            ? Colors.white
                            : Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    TransactionHistoryInProgressView(),
                    TransactionHistoryInProgressCompletedView()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TransactionHistoryView> createState() => TransactionHistoryController();
}
