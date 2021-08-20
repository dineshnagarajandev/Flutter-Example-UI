import 'package:flutter/material.dart';

class SeatingDetail {
  final String name;
  final String price;
  final List<Color> colorOptions;
  final String description;
  final String imageName;

  SeatingDetail(this.name, this.price, this.colorOptions, this.description,
      this.imageName);
}

final seatingDetails = [
  SeatingDetail(
      "Janet",
      "€ 599",
      [Color(0xFF229592), Color(0xFF626076), Color(0xFFF0E5CD)],
      "Meet Janet - a dainty lounge chair that will up the glam quotient of any space. Use this comfy design as extra seating to park your guests in or as a study chair to think deep thoughts in.",
      "lib/asset/blue.png"),
  SeatingDetail(
      "Morgen",
      "€ 649",
      [
        Color(0xFF3969AB),
        Color(0xFF229592),
        Color(0xFFE57651),
        Color(0xFFF0E5CD)
      ],
      "Meet Janet - a dainty lounge chair that will up the glam quotient of any space. Use this comfy design as extra seating to park your guests in or as a study chair to think deep thoughts in.",
      "lib/asset/green.png"),
  SeatingDetail(
      "Carven",
      "€ 619",
      [
        Color(0xFFE57651),
        Color(0xFF3969AB),
        Color(0xFF229592),
        Color(0xFFF0E5CD)
      ],
      "Meet Janet - a dainty lounge chair that will up the glam quotient of any space. Use this comfy design as extra seating to park your guests in or as a study chair to think deep thoughts in.",
      "lib/asset/blue.png"),
  SeatingDetail(
      "Janet",
      "€ 599",
      [Color(0xFF229592), Color(0xFF626076), Color(0xFFF0E5CD)],
      "Meet Janet - a dainty lounge chair that will up the glam quotient of any space. Use this comfy design as extra seating to park your guests in or as a study chair to think deep thoughts in.",
      "lib/asset/blue.png"),
  SeatingDetail(
      "Morgen",
      "€ 649",
      [
        Color(0xFF3969AB),
        Color(0xFF229592),
        Color(0xFFE57651),
        Color(0xFFF0E5CD)
      ],
      "Meet Janet - a dainty lounge chair that will up the glam quotient of any space. Use this comfy design as extra seating to park your guests in or as a study chair to think deep thoughts in.",
      "lib/asset/green.png"),
  SeatingDetail(
      "Carven",
      "€ 619",
      [
        Color(0xFFE57651),
        Color(0xFF3969AB),
        Color(0xFF229592),
        Color(0xFFF0E5CD)
      ],
      "Meet Janet - a dainty lounge chair that will up the glam quotient of any space. Use this comfy design as extra seating to park your guests in or as a study chair to think deep thoughts in.",
      "lib/asset/blue.png"),
  SeatingDetail(
      "Janet",
      "€ 599",
      [Color(0xFF229592), Color(0xFF626076), Color(0xFFF0E5CD)],
      "Meet Janet - a dainty lounge chair that will up the glam quotient of any space. Use this comfy design as extra seating to park your guests in or as a study chair to think deep thoughts in.",
      "lib/asset/blue.png"),
  SeatingDetail(
      "Morgen",
      "€ 649",
      [
        Color(0xFF3969AB),
        Color(0xFF229592),
        Color(0xFFE57651),
        Color(0xFFF0E5CD)
      ],
      "Meet Janet - a dainty lounge chair that will up the glam quotient of any space. Use this comfy design as extra seating to park your guests in or as a study chair to think deep thoughts in.",
      "lib/asset/green.png"),
  SeatingDetail(
      "Carven",
      "€ 619",
      [
        Color(0xFFE57651),
        Color(0xFF3969AB),
        Color(0xFF229592),
        Color(0xFFF0E5CD)
      ],
      "Meet Janet - a dainty lounge chair that will up the glam quotient of any space. Use this comfy design as extra seating to park your guests in or as a study chair to think deep thoughts in.",
      "lib/asset/blue.png"),
];

final filterList = [
  "All",
  "Office Chairs",
  "Recliners",
  "Lounge Chairs",
  "Foot Stools",
  "Seating Stools"
];
