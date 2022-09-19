import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // enlarge image on tap
        enlargeImage(context);
      },
      child: const CircleAvatar(
        radius: 32,
        backgroundColor: Colors.green,
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/person.png"),
        ),
      ),
    );
  }

  Future<dynamic> enlargeImage(BuildContext context) {
    return showDialog(
      useSafeArea: true,
      context: context,
      builder: (context) => Dialog(
        child: Expanded(
          child: SizedBox(
            child: Image.asset(
              "assets/images/person.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
