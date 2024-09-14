import 'package:flutter/material.dart';

TextStyle titleStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

Text titleText(String title) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  );
}

Text pokemonText(String title) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  );
}
