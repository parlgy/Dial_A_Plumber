import 'package:dial_a_plumber/pages/pages.dart';
import 'package:flutter/material.dart';

class LandingPageButtonFilled extends StatelessWidget {
  const LandingPageButtonFilled({
    required this.buttonName2,
    Key? key,
  }) : super(key: key);

  final String buttonName2;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () => ,

      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        decoration: BoxDecoration(
          color: Colors.blue.shade900,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            buttonName2,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class LandingPageButtons extends StatelessWidget {
  const LandingPageButtons({
    required this.buttonName,
    Key? key,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // margin: const EdgeInsets.only(left: 20, right: 20),
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      decoration: BoxDecoration(
          // color: Colors.blue.shade900,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.blue.shade900)),
      child: Center(
        child: Text(
          buttonName,
          style: const TextStyle(
            fontSize: 20,
            // color: Colors.white,
          ),
        ),
      ),
    );
  }
}
