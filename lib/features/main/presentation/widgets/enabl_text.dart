import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;

  ExpandableText({required this.text});

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    ExpandableText(
      text:
          "Variations of the drink involve the use of cream instead of milk, using non-dairy milk substitutes and flavoring with cinnamon (in the United States) or cocoa powder (in Europe and Australasia).[3][4] It is typically smaller in volume than a caffè latte, with a thicker layer of microfoam",
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          maxLines: isExpanded ? null : 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18, color: Colors.grey, height: 1.5),
        ),
        InkWell(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            isExpanded ? 'Read Less' : 'Read More',
            style: const TextStyle(color: Colors.brown),
          ),
        ),
      ],
    );
  }
}
