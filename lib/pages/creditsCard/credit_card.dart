import 'package:clone_nubank/controllers/controller_homepage.dart';
import 'package:clone_nubank/utils/colors_standars.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // _iconCreditCard(),
          _textCreditCard(),
          _textFaturaCard(),
          _limitText(),
          _installments(),
        ],
      ),
    );
  }

  // _iconCreditCard() {
  //   return const Padding(
  //     padding: EdgeInsets.only(bottom: 10),
  //     child: Icon(MdiIcons.creditCard),
  //   );
  // }

  _textCreditCard() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Cartão de crédito',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(MdiIcons.chevronRight)
        ],
      ),
    );
  }

  _textFaturaCard() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Fatura atual',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        GetBuilder<ControllerHomepage>(
            init: ControllerHomepage(),
            builder: (controllerHomepage) {
              return Text(
                controllerHomepage.creditValue,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              );
            }),
      ],
    );
  }

  _limitText() {
    return const Padding(
      padding: EdgeInsets.only(top: 5.0),
      child: Text(
        'Limite disponível de R\$ 48.759,02',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
    );
  }

  _installments() {
    return Container(
      margin: const EdgeInsets.only(
        top: 25,
        bottom: 15,
      ),
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: const Text(
          'Parcelar compras',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
