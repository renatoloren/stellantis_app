import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuCard extends StatelessWidget {
  const MenuCard(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.image})
      : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: SizedBox(
          height: 180,
          width: 180,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.grey[100],
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(children: [
                Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 110,
                  width: 110,
                  child: Container(
                    child: SvgPicture.asset(
                      image,
                    ),
                  ),
                )
              ]),
            ),
          ),
        ));
  }
}
