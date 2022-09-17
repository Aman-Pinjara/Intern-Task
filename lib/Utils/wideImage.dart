import 'package:flutter/material.dart';

import 'imageutil.dart';

class WideImage extends StatelessWidget {
  final String url;
  final String name;
  final String subname;
  const WideImage({required this.url,this.name="",this.subname="", Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Imageutil(url: url, name: name,subname: subname,),
    );
  }
}
