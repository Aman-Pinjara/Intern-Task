import 'package:flutter/material.dart';

import '../colors.dart';

class Imageutil extends StatelessWidget {
  final String url;
  final String name;
  final String subname;
  const Imageutil({required this.url, this.name="", this.subname="", Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.Black.withOpacity(0.3)),
        image: DecorationImage(
          image: AssetImage(url),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              subname,
              style: const TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
