import 'package:flutter/material.dart';

class HoverWidget extends StatefulWidget {
  const HoverWidget({super.key, required this.onTap, required this.builder});

  final void Function() onTap;
  final Widget Function(bool isHovered) builder;

  @override
  State<HoverWidget> createState() => _HoverWidgetState();
}

class _HoverWidgetState extends State<HoverWidget> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) => setState(() => isHover = value),
      child: widget.builder(isHover),
    );
  }
}
