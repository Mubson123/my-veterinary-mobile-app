import 'package:flutter/material.dart';

class UserStats extends StatefulWidget {
  const UserStats({Key? key}) : super(key: key);

  @override
  State<UserStats> createState() => _UserStatsState();
}

class _UserStatsState extends State<UserStats> {
  List<bool> tapped = [false, false, false, false, false];
  int count = 0;
  int j = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            for (int i = 0; i < tapped.length; i++) ...[
              IconButton(
                icon: tapped[i]
                    ? const Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.orange,
                      )
                    : const Icon(
                        Icons.star_border,
                        size: 20,
                        color: Colors.black12,
                      ),
                onPressed: () {
                  setState(() {
                    if (!tapped[i]) {
                      while (j <= i) {
                        tapped[j] = !tapped[i];
                        j++;
                      }
                    } else {
                      tapped = [false, false, false, false, false];
                    }
                    j = 0;
                  });
                  if (tapped[i]) {
                    count = i + 1;
                  } else {
                    count = 0;
                  }
                },
              ),
            ]
          ],
        ),
        const Text('5k Shares'),
        const Text('243k Abos.'),
      ],
    );
  }
}
