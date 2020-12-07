import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  Function onImageUpdated;
  int image;

  ProfileImage({@required this.onImageUpdated, @required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onImageUpdated(image == 9 ? 1 : ++image),
      child: CircleAvatar(
        backgroundImage: AssetImage('lib/images/$image.png'),
        radius: 80,
      ),
    );
  }
}
