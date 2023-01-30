import 'package:flutter/material.dart';

class FloatingNavbarItem {
  final String? title;
  final IconData? icon;
  final Widget? customWidget;
  final bool enableLineIndicator;

  FloatingNavbarItem( {
    required this.enableLineIndicator,
    this.icon,
    this.title,
    this.customWidget,
  }) : assert(icon != null || customWidget != null);
}
