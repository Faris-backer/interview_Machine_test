import 'package:ecommerce_interview_test/constants/screen_size.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String name;
  final Icon icon;
  final Function() ontap;
  const Button({
    Key? key,
    required this.name,
    required this.icon,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: ontap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
              color: Colors.pink,
              width: ScreenSize.size(context).width * 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: icon,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      name,
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
