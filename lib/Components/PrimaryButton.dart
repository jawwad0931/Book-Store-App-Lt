import 'package:flutter/material.dart';

class Primarybutton extends StatelessWidget {
  final String btnName;
  final VoidCallback onTap;
  const Primarybutton({super.key, required this.btnName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 30,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              btnName,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.white, letterSpacing: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
