// features/home/widgets/HomeBottomNavBar.dart

import 'package:flutter/material.dart';
import '../../../core/global_component/BottomNavBarComponent.dart';

class HomeBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const HomeBottomNavBar({required this.currentIndex, required this.onTap, super.key});

  @override
  _HomeBottomNavBarState createState() => _HomeBottomNavBarState();
}

class _HomeBottomNavBarState extends State<HomeBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavBarComponent(
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
    );
  }
}
