import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/transaction_history_in_progress_controller.dart';

class TransactionHistoryInProgressView extends StatefulWidget {
  const TransactionHistoryInProgressView({Key? key}) : super(key: key);

  Widget build(context, TransactionHistoryInProgressController controller) {
    controller.view = this;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          MdiIcons.stickerEmoji,
          size: 150.0,
          color: primaryColor,
        ),
        const SizedBox(
          height: 12.0,
        ),
        const Text(
          "There's nothing here yet",
          style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          "You have completed everything!",
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  @override
  State<TransactionHistoryInProgressView> createState() =>
      TransactionHistoryInProgressController();
}
