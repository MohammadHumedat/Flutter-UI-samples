import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  BottomNavBar({required this.selectedIndex, required this.onItemTapped});

  final List<IconData> _icons = [
    Icons.home,
    Icons.inventory_2,
    Icons.local_shipping,
    Icons.person,
    Icons.mail,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 340,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(_icons.length, (index) {
          bool isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () => onItemTapped(index),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration:
                  isSelected
                      ? BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      )
                      : null,
              child: Icon(
                _icons[index],
                color: isSelected ? Colors.black : Colors.white,
                size: 28,
              ),
            ),
          );
        }),
      ),
    );
  }
}
