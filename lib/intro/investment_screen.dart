import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'card_section.dart';
import 'create_account_link.dart';
import 'get_started_button.dart';
import 'investment_title.dart';

class InvestmentScreen extends StatelessWidget {
  const InvestmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return const Scaffold(
      backgroundColor: Color(0xFF201937),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 68),
                CardSection(),
                SizedBox(height: 144),
                InvestmentTitle(),
                SizedBox(height: 16),
                GetStartedButton(),
                SizedBox(height: 44),
                CreateAccountLink(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
