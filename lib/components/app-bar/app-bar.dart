import 'package:flutter/material.dart';

import 'package:danilo_arquiteto/constants/global-constants.dart';

class AppBarComponent extends StatefulWidget {
  AppBarComponent({Key? key}) : super(key: key);

  @override
  State<AppBarComponent> createState() => _AppBarComponentState();
}

class _AppBarComponentState extends State<AppBarComponent> {
  bool _menuOpen = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 200,
      backgroundColor: Colors.black,
      title: getWidth(context) <= 860
          ? Column(
              children: [
                Logo(),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Inicio", style: TextStyle(color: Colors.amber, fontSize: 22)),
                    Text("Projetos", style: TextStyle(color: Colors.white, fontSize: 22)),
                    Text("Contato", style: TextStyle(color: Colors.white, fontSize: 22)),
                    Text("Conta", style: TextStyle(color: Colors.white, fontSize: 22)),
                  ],
                )
              ],
            )
          : Logo(),
      centerTitle: getWidth(context) <= 860 ? !_menuOpen : _menuOpen,
      actions: [
        getWidth(context) <= 860
            ? Container()
            : Row(
                children: [
                  Text("Inicio", style: TextStyle(color: Colors.amber, fontSize: 22)),
                  SizedBox(width: 60),
                  Text("Projetos", style: TextStyle(color: Colors.white, fontSize: 22)),
                  SizedBox(width: 60),
                  Text("Contato", style: TextStyle(color: Colors.white, fontSize: 22)),
                  SizedBox(width: 60),
                  Text("Conta", style: TextStyle(color: Colors.white, fontSize: 22)),
                  SizedBox(width: 50),
                ],
              ),
        //Menu
      ],
    );
  }

  Column Logo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Image.asset(
            "assets/images/logo_temp.png",
            height: 100,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text(
            "Arquitetura e Urbanismo",
            style: TextStyle(
              color: Colors.amber,
            ),
          ),
        ),
      ],
    );
  }
}
