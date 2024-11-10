import 'package:flutter/material.dart';

class SetProperties extends StatefulWidget {
  final String title;
  final List<MenuItem> items;

  const SetProperties({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  State<SetProperties> createState() => _SetPropertiesState();
}

class _SetPropertiesState extends State<SetProperties> {
  bool isExpanded = false;

  void _toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: _toggleExpansion,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: Colors.blueGrey[900],
                  ),
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Almarai',
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[900],
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
          ),
          if (isExpanded)
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: widget.items
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .end, // لجعل المحتويات على اليمين
                          children: [
                            Text(
                              item.text,
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Almarai',
                              ),
                            ),
                            const SizedBox(width: 10),
                            Icon(
                              item.icon,
                              color: Colors.blueGrey[900],
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }
}

class MenuItem {
  final IconData icon;
  final String text;

  MenuItem({required this.icon, required this.text});
}
