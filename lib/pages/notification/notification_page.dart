import 'package:clone_nubank/utils/colors_standars.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _criptoNotification(),
          _seguroVida(),
          _conviteAmigos(),
        ],
      ),
    );
  }

  _criptoNotification() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(
        left: 10,
        top: 10,
        right: 10,
        bottom: 20,
      ),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: "Cripto: ",
            style: TextStyle(
              color: backgroundColor,
              fontSize: 16,
            ),
          ),
          const TextSpan(
            text: "Compre com segurança \na partir de R\$1",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ]),
      ),
    );
  }

  _seguroVida() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(
        left: 10,
        top: 10,
        right: 10,
        bottom: 20,
      ),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(children: [
          const TextSpan(
            text: "Seguro de Vida a partir de R\$4/\nmês?",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          TextSpan(
            text: " Conheça o Nubank Vida!",
            style: TextStyle(
              color: backgroundColor,
              fontSize: 16,
            ),
          ),
        ]),
      ),
    );
  }

  _conviteAmigos() {
    return Container(
      // width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(
        left: 10,
        top: 10,
        right: 10,
        bottom: 20,
      ),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(children: [
          const TextSpan(
            text: "Salve amigos da burocracia.\n",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          TextSpan(
            text: "Faça um convite para o Nubank.",
            style: TextStyle(
              color: backgroundColor,
              fontSize: 16,
            ),
          ),
        ]),
      ),
    );
  }
}
