import 'package:flutter/material.dart';

class RatingEmoji extends StatelessWidget {
  const RatingEmoji({
    Key? key,
    required this.value,
    required this.activeValue,
    required this.onTap,
  }) : super(key: key);
  final int value;
  final int activeValue;

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            onTap();
          },
          child: SizedBox(
            height: 30,
            width: 30,
            child: value == activeValue
                ? Icon(Icons.star_border_outlined)
                : Icon(Icons.star_border_outlined),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '$value',
          style: const TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Montserrat'),
        )
      ],
    );
  }
}
