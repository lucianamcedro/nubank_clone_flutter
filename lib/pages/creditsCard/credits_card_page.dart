import 'package:clone_nubank/utils/colors_standars.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreditsCard extends StatelessWidget {
  const CreditsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.fromLTRB(15, 15, 10, 15),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: const [
          Icon(
            MdiIcons.creditCard,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'Meus cartões',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
