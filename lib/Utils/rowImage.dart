import 'package:conyonintern/Utils/imageutil.dart';
import 'package:flutter/material.dart';

class RowImage extends StatelessWidget {
  final String url;
  const RowImage(
      {required this.url,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Imageutil(
                url: url,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Imageutil(
                url: url,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
