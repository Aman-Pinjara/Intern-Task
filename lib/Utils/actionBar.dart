import 'package:flutter/material.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        mybuttons(const Icon(Icons.shopping_cart), "Cart", () {}, ),
        mybuttons(const Icon(Icons.shopping_bag_rounded), "Shop", () {}),
        mybuttons(const Icon(Icons.calendar_month), "Date", () {}),
        mybuttons(const Icon(Icons.hourglass_top_rounded), "Timer", () {}),
        mybuttons(const Icon(Icons.card_giftcard), "Gift", () {}),
      ],
    );
  }

  Widget mybuttons(Icon icon, String text, Function onPress) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          child: IconButton(onPressed: () => onPress, icon: icon),
        ),
        Text(text),
      ],
    );
  }
}
