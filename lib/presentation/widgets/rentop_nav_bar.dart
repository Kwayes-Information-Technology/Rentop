import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/style/colors.dart';

class RentopNavBar extends StatelessWidget {
  final List<String> items;
  final int selectedItemIndex;
  final Function(int index) onSelectedItem;

  const RentopNavBar({
    super.key,
    required this.items,
    required this.selectedItemIndex,
    required this.onSelectedItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items.map(
          (item) {
            final itemIndex = items.indexOf(item);
            return Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 10,
                  ),
                ],
                gradient: LinearGradient(
                  colors: selectedItemIndex == itemIndex
                      ? [
                          mainColor,
                          mainShadeColor,
                        ]
                      : [
                          Colors.white,
                          Colors.white,
                        ],
                ),
              ),
              child: GestureDetector(
                onTap: () => onSelectedItem(itemIndex),
                child: ImageIcon(
                  AssetImage(item),
                  size: 20,
                  color: selectedItemIndex == itemIndex
                      ? Colors.white
                      : minorShadeColor,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
