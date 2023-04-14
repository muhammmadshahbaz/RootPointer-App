import 'package:flutter/material.dart';
import 'package:first_project/Constant/colors.dart';

class CustomContainer extends StatelessWidget {
   CustomContainer(
      {super.key,
      required this.title,
      required this.color,
      required this.parameter});
  final String title, parameter;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 231, 224, 224),
                  border: Border.all(
                      width: 4, color: Color.fromARGB(31, 231, 224, 224))),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Color.fromARGB(255, 252, 252, 252), width: 4)),
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: TextStyle(
                      color: AppColors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 5
            ),
            Text(
              parameter,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}


