import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stellantis_app/components/MenuCard.dart';
import 'package:stellantis_app/pages/company_page.dart';
import 'package:stellantis_app/pages/team_page.dart';
import 'package:stellantis_app/pages/vehicle_page.dart';

const welcomeCarIcon = 'assets/images/home_car.svg';
const teamIcon = 'assets/images/team.svg';
const acessoriesIcon = 'assets/images/acessories_car.svg';
const circleCarIcon = 'assets/images/circle_car.svg';
const chargingIcon = 'assets/images/charging_car.svg';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
      child: Column(
        children: [
          SizedBox(
            height: 250,
            width: 250,
            child: Center(
              child: SvgPicture.asset(
                welcomeCarIcon,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(children: [
            MenuCard(
                text: 'Batería', image: chargingIcon, onPressed: (() => {})),
            const Spacer(),
            MenuCard(
                text: 'Seu Veículo',
                image: acessoriesIcon,
                onPressed: (() => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VehiclePage()),
                    ))),
          ]),
          const SizedBox(height: 15),
          Row(children: [
            MenuCard(
                text: 'A Stellantis',
                image: circleCarIcon,
                onPressed: (() => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CompanyPage()),
                    ))),
            const Spacer(),
            MenuCard(
                text: 'Nosso Time',
                image: teamIcon,
                onPressed: (() => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TeamPage()),
                    ))),
          ])
        ],
      ),
    ));
  }
}
