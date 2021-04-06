import 'package:flutter/material.dart';
import 'package:suprematech/app/models/Clients.dart';
import 'package:suprematech/app/themes/colors.dart';
import 'package:suprematech/app/themes/fonts.dart';

class ClientsWidget extends StatelessWidget {

  final Client client;

  const ClientsWidget(this.client);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 210.0,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        gradient: LinearGradient(
          begin: Alignment(-1.0, -1.0),
          end: Alignment(1.15, 0.07),
          colors: _colors(this.client.color),
          stops: [0.0, 1.0],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Colors.white60, borderRadius: BorderRadius.circular(8)),
            child: Icon(Icons.home_outlined, color: Colors.white, size: 40),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.client.qtdCall.toString() + ' chamados',
                style: FontsCustom.subTitleClients,
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Text(
                this.client.name,
                style: FontsCustom.titleClients,
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10),
              Wrap(
                children: this.client.users != null ? this.client.users.map((user) => Container(
                    width: 25.0,
                    height: 25.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      image: DecorationImage(
                        image: NetworkImage(
                            user.pathPhoto),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  )).toList() : [],
              )
            ],
          )
        ],
      ),
    );
  }

  _colors(int color) {
    if (color == 1) {
      return [ColorsCustom.purpelDark, ColorsCustom.purpelMedium];
    }
    return [ColorsCustom.greyDark, ColorsCustom.greyLigth];
  }
}
