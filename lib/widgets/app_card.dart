import 'package:flutter/material.dart';
import 'abo_button.dart';
import 'circle_image_avatar.dart';

class AppCard extends StatefulWidget {
  const AppCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.status,
    required this.followers,
    required this.shares,
    required this.ratings,
    required this.pubDate,
  }) : super(key: key);
  final String imageUrl;
  final String name;
  final bool status;
  final String pubDate;
  final double followers;
  final double ratings;
  final double shares;

  @override
  State<AppCard> createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  bool tapped = false;
  double ratingsCount = 0;
  double aboCount = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      shadowColor: Colors.grey,
      margin: const EdgeInsets.only(left: 4, right: 4, bottom: 16),
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Column(
        children: [
          ListTile(
            leading: CircleProfileImage(imageUrl: widget.imageUrl),
            title: Text(widget.name),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.status
                    ? const Text(
                        'Online',
                        style: TextStyle(color: Colors.green),
                      )
                    : const Text(
                        'Offline',
                        style: TextStyle(color: Colors.red),
                      ),
                Text(widget.pubDate),
              ],
            ),
            isThreeLine: true,
            dense: true,
            horizontalTitleGap: 5,
            trailing: AboButton(
              color: Colors.blueGrey,
              width: size.width,
            ),
          ),
          ListTile(
            dense: true,
            horizontalTitleGap: 0,
            leading: IconButton(
              icon: tapped
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
                tapped = !tapped;
                setState(() {
                  if (tapped) {
                    ratingsCount = widget.ratings;
                  } else {
                    ratingsCount = widget.ratings - 1;
                  }
                });
              },
            ),
            title: Text(
              '${ratingsCount}k Ratings',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            trailing: Text(
              '${widget.followers}k Followers',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Container(
            height: size.height / 2.5,
            color: Colors.orange,
          ),
          Container(
            height: size.height / 12,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
