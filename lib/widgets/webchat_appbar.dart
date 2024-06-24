import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      color: appBarColor,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: appBarColor,
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg'),
                radius: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text(
                info[6]['name'].toString(),
                style: const TextStyle(fontSize: 20),
              ),
            ],
          )
        ],
      ),
    );
  }
}
