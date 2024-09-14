import 'package:flutter/material.dart';

class TypePokemonContainer extends StatelessWidget {
  String type;
  Color color;

  TypePokemonContainer({
    required this.type,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: color, width: 2),
      ),
      child: Row(
        children: [
          Icon(
            Icons.energy_savings_leaf,
            color: color,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            type,
            style: TextStyle(color: color, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
