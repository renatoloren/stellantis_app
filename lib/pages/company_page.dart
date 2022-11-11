import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const circleCarIcon = 'assets/images/circle_car.svg';

class CompanyPage extends StatelessWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
          title: const Text(
            "A Empresa",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(children: [
            const Text(
              'O Grupo Stellantis',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "A Stellantis é um grupo automotivo franco-ítalo-americano multinacional, formado a partir da união da montadora ítalo-americana Fiat Chrysler Automobiles com a montadora francesa PSA Group. A palavra Stellantis tem suas raízes no verbo latino stello que significa iluminar com estrelas. Atualmente, o grupo Stellantis reúne 20 empresas automotivas e é a 4ª maio fabricante de carros do mundo. \n\n A mobilidade é uma das grandes preocupações do Grupo Stellantis, já que este tema afeta a educação, saúde, moradia, trabalho e lazer; e tem tudo em comum com o DNA da Stellantis.",
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 300,
              height: 300,
              child: SvgPicture.asset(
                circleCarIcon,
              ),
            ),
          ]),
        ));
  }
}
