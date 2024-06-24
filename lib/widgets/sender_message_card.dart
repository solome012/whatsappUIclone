import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';

class MySenderMessageCard extends StatelessWidget {
  final String message;
  final String date;
  const MySenderMessageCard({
    super.key,
    required this.message,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    //The Align widget ensures that its
    // child is positioned at the center-left of the available space.
    return Align(
      alignment: Alignment.centerLeft,
      //The ConstrainedBox widget ensures that
      // its child does not exceed a certain width.
      child: ConstrainedBox(
        constraints: BoxConstraints(
          //This means the maximum width the child
          //can occupy is the screen width minus 45 pixels.
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: senderMessageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                  right: 30,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  message,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                bottom: 2,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      date,
                      style:
                          const TextStyle(fontSize: 13, color: Colors.white60),
                    ),
                    const SizedBox(
                      width: 5.1,
                    ),
                    const Icon(
                      Icons.done_all,
                      size: 20,
                      color: Colors.white60,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
