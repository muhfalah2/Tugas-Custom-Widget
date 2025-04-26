import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, //Center Bintang
      children: [
        IconButton(onPressed: () {},
            icon: Icon(
              Icons.star, color: Colors.white,
            )
        ),
        IconButton(onPressed: () {},
            icon: Icon(
              Icons.star, color: Colors.white,
            )
        ),
        IconButton(onPressed: () {},
            icon: Icon(
              Icons.star, color: Colors.white,
            )
        ),
        IconButton(onPressed: () {},
            icon: Icon(
              Icons.star, color: Colors.white,
            )
        ),
        IconButton(onPressed: () {},
            icon: Icon(
              Icons.star_half_outlined, color: Colors.white,
            )
        ),
      ],
    );
  }
}