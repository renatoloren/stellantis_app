import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VehicleDetail extends StatelessWidget {
  const VehicleDetail({
    Key? key,
    required this.label,
    required this.text,
    this.icon,
  }) : super(key: key);

  final String label;
  final String text;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$label:',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(width: 5),
        icon ?? const SizedBox(height: 0),
        Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
