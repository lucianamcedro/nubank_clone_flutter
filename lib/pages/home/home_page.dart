import 'package:clone_nubank/pages/account/account.dart';
import 'package:clone_nubank/pages/actions/menu_itens.dart';
import 'package:clone_nubank/pages/creditsCard/credit_card.dart';
import 'package:clone_nubank/pages/creditsCard/credits_card_page.dart';
import 'package:clone_nubank/pages/home/model/header.dart';
import 'package:clone_nubank/pages/notification/notification_page.dart';
import 'package:clone_nubank/utils/colors_standars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Header(),
              Account(),
              MenuItens(),
              CreditsCard(),
              NotificationPage(),
              Divider(
                thickness: 1.6,
              ),
              CreditCard(),
              Divider(
                thickness: 1.6,
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ));
  }
}
