// The chat widget with a container and a row
import 'dart:developer';

import 'package:flipper_models/isar_models.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  final Conversation chat;

  const ChatWidget({Key? key, required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Check if the message is from the user or the other person
    final isUser = chat.fromNumber ==
        ProxyService.box.getUserPhone()!.replaceFirst("+", "");
    log(isUser.toString());
    // Align the message to the right or left depending on the source
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isUser ? Colors.blue : Colors.grey,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // If the message is not from the user, show the avatar
            if (!isUser)
              CircleAvatar(
                backgroundImage:
                    AssetImage(chat.avatar, package: "flipper_socials"),
              ),
            // Show the message text
            Text(chat.body),
          ],
        ),
      ),
    );
  }
}
