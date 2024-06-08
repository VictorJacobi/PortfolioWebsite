import 'package:flutter/material.dart';

class HoverContainer extends StatefulWidget {
  final Widget child;
  final Color color;
  final Color hoverColor;
  final double? width;
  final double? height;

  const HoverContainer({
    required this.child,
    required this.color,
    required this.hoverColor,
    this.width,
    this.height,Key? key
  }):super(key: key);

  @override
  State<HoverContainer> createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        decoration: BoxDecoration(
          color: _isHovered ? widget.hoverColor : widget.color,
          borderRadius: BorderRadius.circular(10)
        ),
        padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 12),
        duration: const Duration(milliseconds: 200),
        width: widget.width,
        height: widget.height,
        child: widget.child,
      ),
    );
  }
}