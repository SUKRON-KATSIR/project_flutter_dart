import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelineContent extends StatelessWidget {
  final String title;
  final String description;
  final String subdescription;
  final bool isFirst;
  final bool isLast;
  const TimelineContent({
    super.key,
    required this.title,
    required this.description,
    required this.subdescription,
    required this.isFirst,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SizedBox(
        child: TimelineTile(
          endChild: Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(description),
                Text(
                  subdescription,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          beforeLineStyle: const LineStyle(color: Colors.indigo, thickness: 2),
          isFirst: isFirst,
          isLast: isLast,
          indicatorStyle: const IndicatorStyle(
            color: Colors.indigo,
            width: 15,
          ),
        ),
      ),
    );
  }
}
