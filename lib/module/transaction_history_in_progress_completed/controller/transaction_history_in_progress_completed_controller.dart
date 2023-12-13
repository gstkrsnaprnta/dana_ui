import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../view/transaction_history_in_progress_completed_view.dart';

class TransactionHistoryInProgressCompletedController
    extends State<TransactionHistoryInProgressCompletedView> {
  static late TransactionHistoryInProgressCompletedController instance;
  late TransactionHistoryInProgressCompletedView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List items = [
    {
      "title": "Send Money",
      "date": "25 Nov 2023 . 10:10",
      "amount": "Rp 180.000-",
      "icon": Icons.send,
    },
    {
      "title": "Receive Money",
      "date": "26 Nov 2023 . 12:30",
      "amount": "Rp 250.000-",
      "icon": Icons.arrow_downward,
    },
    {
      "title": "Bill Payment",
      "date": "27 Nov 2023 . 15:45",
      "amount": "Rp 120.000-",
      "icon": Icons.payment,
    },
    {
      "title": "Online Purchase",
      "date": "28 Nov 2023 . 09:20",
      "amount": "Rp 350.000-",
      "icon": Icons.shopping_cart,
    },
    {
      "title": "Withdraw Cash",
      "date": "29 Nov 2023 . 18:05",
      "amount": "Rp 200.000-",
      "icon": Icons.attach_money,
    },
    {
      "title": "Deposit",
      "date": "30 Nov 2023 . 14:15",
      "amount": "Rp 50.000-",
      "icon": Icons.account_balance,
    },
    {
      "title": "Mobile Top-up",
      "date": "01 Dec 2023 . 08:50",
      "amount": "Rp 100.000-",
      "icon": Icons.phone,
    },
    {
      "title": "Investment",
      "date": "02 Dec 2023 . 21:30",
      "amount": "Rp 800.000-",
      "icon": Icons.trending_up,
    },
  ];
}
