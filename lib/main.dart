import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cashflow_app/home.dart';
import 'package:cashflow_app/income.dart';
import 'package:cashflow_app/expense.dart';
import 'package:cashflow_app/debt.dart';
import 'package:cashflow_app/saving.dart';
import 'package:cashflow_app/sign_up.dart';
import 'package:cashflow_app/login.dart';
import 'package:cashflow_app/summary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          '/income': (context) => AddIncomePage(),
          '/expense': (context) => AddExpensePage(),
          '/debt': (context) => AddDebtPage(),
          '/saving': (context) => AddSavingPage(),
          '/login': (context) => AddLogInPage(),
          '/signup': (context) => AddSignUpPage(),
          '/summary': (context) => MySummary(),
        });
  }
}
