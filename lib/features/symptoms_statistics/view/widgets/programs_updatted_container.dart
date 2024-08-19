import 'package:flutter/material.dart';

class ProgramsUpdatedContainer extends StatelessWidget {
  const ProgramsUpdatedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(.3)),
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffFFFAF7),
      ),
      child: const Text(
        textAlign: TextAlign.center,
        'Show more articles Show more Show more articles Show more articles Show more articles Show more articles',
      ),
    );
  }
}
