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
      style: IconButton.styleFrom(
        backgroundColor:
            Color.fromARGB(
              255,
              77,
              126,
              199,
            ),
        padding: EdgeInsets.symmetric(
          horizontal:
              10,
          vertical:
              5,
        ),
      ),
      icon:
          Image.asset(
            image,
            height:
                50,
            width:
                50,
          ),
    );
  }
}
