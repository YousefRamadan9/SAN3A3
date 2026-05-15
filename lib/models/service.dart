import 'package:flutter/material.dart';

class Service {
  final String id;
  final String name;
  final String icon;
  final Color color;
  final Color iconColor;
  final String description;

  const Service({
    required this.id,
    required this.name,
    required this.icon,
    required this.color,
    required this.iconColor,
    required this.description,
  });
}
