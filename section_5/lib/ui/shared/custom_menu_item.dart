import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMenuItem extends StatefulWidget {
  const CustomMenuItem({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;

  @override
  State<CustomMenuItem> createState() => _CustomMenuItemState();
}

class _CustomMenuItemState extends State<CustomMenuItem> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHover = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHover = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          width: 150,
          height: 50,
          color: _isHover ? Colors.pinkAccent : Colors.black,
          child: Center(
            child: Text(
              widget.text,
              style: GoogleFonts.roboto(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
