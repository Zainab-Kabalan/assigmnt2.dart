import 'package:flutter/material.dart';

class signbutton
    extends
        StatelessWidget {
  const signbutton({
    super.key,
    required this.ontap,
    required this.image,
  });
  final void
  Function()
  ontap;
  final String
  image;
  @override
  Widget build(
    BuildContext
    context,
  ) {
    return IconButton(
      onPressed:
          ontap,
      icon:
          Image.asset(
            image,
            height:
                50,
            width:
                50,
          ),
      iconSize: 1,
    );
  }
}
