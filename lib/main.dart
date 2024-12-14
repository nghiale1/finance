
import 'package:finance/intro/investment_screen.dart';
import 'package:finance/wallet_home/wallet_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ); //
  runApp(MaterialApp(home: InvestmentScreen(),));
}
