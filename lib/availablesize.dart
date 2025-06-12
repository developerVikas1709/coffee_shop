import 'package:flutter/material.dart';

class Availablesize extends StatefulWidget {
  final String size;
  const Availablesize({super.key, required this.size});

  @override
  State<Availablesize> createState() => _AvailablesizeState();
}

class _AvailablesizeState extends State<Availablesize> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Container(
          width: 96,
          height: 41,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected
                ? Theme.of(context).brightness == Brightness.dark
        ? const Color.fromARGB(255, 113, 30, 30) 
        : const Color(0xffcc5454)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: isSelected
                    ? Color(0xffb31814)
                    : Theme.of(context).brightness == Brightness.dark
        ? const Color.fromARGB(255, 113, 30, 30) 
        : const Color(0xffcc5454),
                width: isSelected ? 1.1 : 0.5),
          ),
          child: Text(
            widget.size,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: isSelected
                    ? Theme.of(context).brightness == Brightness.dark
        ? const Color.fromARGB(255, 255, 255, 255) 
        : const Color.fromARGB(255, 255, 255, 255)
                    : Theme.of(context).brightness == Brightness.dark
        ? const Color.fromARGB(255, 113, 30, 30) 
        : const Color(0xffcc5454),
                fontSize: 14),
          ),
        ),
      );
}
