import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:section_5/providers/page_provider.dart';
import 'package:section_5/ui/shared/custom_menu_item.dart';

class CustomAppMenu extends StatefulWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  State<CustomAppMenu> createState() => _CustomAppMenuState();
}

class _CustomAppMenuState extends State<CustomAppMenu>
    with TickerProviderStateMixin {
  bool _isOpen = false;
  bool _isFinished = false;

  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PageProvider>(context, listen: false);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if (_isOpen) {
            _controller.reverse();
          } else {
            _controller.forward();
          }

          setState(() {
            _isOpen = !_isOpen;
            _isFinished = false;
          });
        },
        child: AnimatedContainer(
          onEnd: () {
            setState(() {
              _isFinished = true;
            });
          },
          duration: const Duration(milliseconds: 200),
          width: 150,
          height: _isOpen ? 308 : 50,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          color: Colors.black,
          child: Column(
            children: [
              _MenuTitle(isOpen: _isOpen, controller: _controller),
              if (_isFinished && _isOpen) ...[
                CustomMenuItem(
                    text: 'Home',
                    onTap: () {
                      provider.goToIndex(0);
                    }),
                CustomMenuItem(
                    text: 'About',
                    onTap: () {
                      provider.goToIndex(1);
                    }),
                CustomMenuItem(
                    text: 'Pricing',
                    onTap: () {
                      provider.goToIndex(2);
                    }),
                CustomMenuItem(
                    text: 'Contact',
                    onTap: () {
                      provider.goToIndex(3);
                    }),
                CustomMenuItem(
                    text: 'Location',
                    onTap: () {
                      provider.goToIndex(4);
                    }),
                const SizedBox(height: 8),
              ]
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuTitle extends StatelessWidget {
  const _MenuTitle({
    Key? key,
    required bool isOpen,
    required AnimationController controller,
  })  : _isOpen = isOpen,
        _controller = controller,
        super(key: key);

  final bool _isOpen;
  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 50,
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            width: _isOpen ? 40 : 0,
          ),
          Text(
            'Menú',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const Spacer(),
          AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _controller,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
