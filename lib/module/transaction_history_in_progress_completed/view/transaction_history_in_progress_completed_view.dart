import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../controller/transaction_history_in_progress_completed_controller.dart';

class TransactionHistoryInProgressCompletedView extends StatefulWidget {
  const TransactionHistoryInProgressCompletedView({Key? key}) : super(key: key);

  Widget build(
      context, TransactionHistoryInProgressCompletedController controller) {
    controller.view = this;
    return Container(
      color: const Color(0xfff7f7f7),
      padding: const EdgeInsets.all(20.0),
      child: ListView.builder(
        itemCount: controller.items.length,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.items[index];
          return Column(
            children: [
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(
                      8.0), // Ubah padding sesuai kebutuhan
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[400]!, width: 1.0),
                    borderRadius: BorderRadius.circular(
                        5.0), // Ubah radius sesuai kebutuhan
                  ),
                  child: Icon(
                    item["icon"],
                    color: primaryColor,
                    size: 24.0,
                  ),
                ),
                title: Text(
                  item["title"],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  item["date"],
                  style: const TextStyle(
                    fontSize: 10.0,
                  ),
                ),
                trailing: Text(
                  item["amount"],
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(),
            ],
          );
        },
      ),
    );
  }

  @override
  State<TransactionHistoryInProgressCompletedView> createState() =>
      TransactionHistoryInProgressCompletedController();
}
