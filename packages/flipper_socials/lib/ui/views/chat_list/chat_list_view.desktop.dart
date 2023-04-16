import 'package:flipper_models/isar_models.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flipper_socials/ui/widgets/chat_widget.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';
import 'chat_list_viewmodel.dart';
import 'package:animated_icon_button/animated_icon_button.dart';

class ChatListViewDesktop extends StatefulWidget {
  const ChatListViewDesktop({super.key});

  @override
  State<ChatListViewDesktop> createState() => _ChatListViewDesktopState();
}

class _ChatListViewDesktopState extends State<ChatListViewDesktop>
    with TickerProviderStateMixin {
  late AnimationController animationController; // use late modifier
  final TextEditingController _conversationController =
      TextEditingController(text: '');
  Conversation? latestConversation;
  final _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      // initialize in initState
      vsync: this,
      duration: const Duration(milliseconds: 200),
      reverseDuration: const Duration(milliseconds: 200),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    final size = MediaQuery.of(context).size;
    // Use a row widget to split the screen into two parts
    return ViewModelBuilder<ChatListViewModel>.reactive(
        viewModelBuilder: () => ChatListViewModel(),
        onViewModelReady: (model) {},
        builder: (build, viewModel, child) {
          return Scaffold(
            body: Row(
              children: [
                // The left part with the list of messages
                StreamBuilder<List<Conversation>>(
                    stream: ProxyService.isarApi.conversations(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final chats = snapshot.data;
                        // get last element from chat or the latest message

                        return SizedBox(
                          width: size.width * 0.3,
                          child: ListView.builder(
                            itemCount: chats!.length,
                            itemBuilder: (context, index) {
                              final chat = chats[index];
                              return ListTile(
                                leading: Stack(
                                  children: [
                                    // A circle avatar that shows the chat image
                                    CircleAvatar(
                                      backgroundImage:
                                          NetworkImage(chat.avatar),
                                      radius: 20,
                                    ),
                                    // A positioned widget that shows the channelType image at the bottom right corner
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundImage: AssetImage(
                                          "assets/${chat.channelType}.png",
                                          package: 'flipper_socials',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                title: Text(chat.userName),
                                subtitle: Text(chat.body),
                                trailing: const Text("11:12"),
                                onTap: () {
                                  viewModel.focusedConversation = true;
                                  viewModel.conversationId =
                                      chats[index].conversationId;
                                },
                              );
                            },
                          ),
                        );
                      } else {
                        return const Center(
                          child: Text(" No conversations to show"),
                        );
                      }
                    }),
                // The right part with the selected chat details and messages
                SizedBox(
                  width: size.width * 0.7,
                  child: Column(
                    children: [
                      // The app bar with profile picture, username, and status
                      viewModel.focusedConversation
                          ? AppBar(
                              automaticallyImplyLeading: false,
                              title: Padding(
                                padding: const EdgeInsets.only(left: 28.0),
                                child: StreamBuilder<List<Conversation>>(
                                    stream: ProxyService.isarApi.conversations(
                                        conversationId:
                                            viewModel.conversationId!),
                                    builder: (context, snapshot) {
                                      if (snapshot.hasData) {
                                        latestConversation =
                                            snapshot.data!.last;

                                        String userPhoneNumber =
                                            ProxyService.box.getUserPhone()!;
                                        final data = snapshot.data!
                                            .where((item) =>
                                                item.toNumber !=
                                                userPhoneNumber)
                                            .toList();
                                        return Row(
                                          children: [
                                            Stack(
                                              children: [
                                                // A circle avatar that shows the chat image
                                                CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      data.first.avatar),
                                                  radius: 20,
                                                ),
                                                // A positioned widget that shows the channelType image at the bottom right corner
                                                Positioned(
                                                  bottom: 0,
                                                  right: 0,
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundImage: AssetImage(
                                                      "assets/${data.first.channelType}.png",
                                                      package:
                                                          'flipper_socials',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        );
                                      } else {
                                        return const SizedBox.shrink();
                                      }
                                    }),
                              ),
                              actions: const [],
                            )
                          : const SizedBox.shrink(),
                      // The list of messages for the selected chat
                      viewModel.focusedConversation
                          ? StreamBuilder<List<Conversation>>(
                              stream: ProxyService.isarApi.conversations(
                                  conversationId: viewModel.conversationId!),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  final data = snapshot.data;
                                  SchedulerBinding.instance
                                      .addPostFrameCallback((_) {
                                    _scrollController.jumpTo(_scrollController
                                        .position.maxScrollExtent);
                                  });
                                  return Flexible(
                                    child: ListView.builder(
                                      controller:
                                          _scrollController, // Set the ScrollController
                                      itemCount: data!.length,
                                      itemBuilder: (context, index) {
                                        // Use the ChatWidget to display the message
                                        return ChatWidget(chat: data[index]);
                                      },
                                    ),
                                  );
                                } else {
                                  return const SizedBox.shrink();
                                }
                              })
                          : const SizedBox.shrink(),
                      // The text field for sending messages
                      viewModel.focusedConversation
                          ? Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 8.0, right: 10),
                              child: TextFormField(
                                  controller: _conversationController,
                                  decoration: InputDecoration(
                                    suffixIcon: AnimatedIconButton(
                                      animationController: animationController,
                                      size: 20,
                                      onPressed: () async {
                                        if (_conversationController
                                            .text.isNotEmpty) {
                                          await viewModel.sendMessage(
                                            message:
                                                _conversationController.text,
                                            latestConversation:
                                                latestConversation!,
                                          );
                                          // Scroll to the bottom of the ListView
                                          _scrollController.animateTo(
                                            _scrollController
                                                .position.maxScrollExtent,
                                            duration: const Duration(
                                                milliseconds: 300),
                                            curve: Curves.fastOutSlowIn,
                                            // curve: Curves.easeOut,
                                          );
                                        }
                                        _conversationController.clear();
                                        // send message logic here
                                      },
                                      icons: const <AnimatedIconItem>[
                                        AnimatedIconItem(
                                          icon: Icon(
                                            FluentIcons.send_24_regular,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        AnimatedIconItem(
                                          icon: Icon(
                                            FluentIcons.send_24_filled,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ],
                                    ),
                                    border: const OutlineInputBorder(),
                                    hintText: 'Type a message',
                                  ),
                                  keyboardType: TextInputType
                                      .multiline, // enable multiline input
                                  minLines:
                                      1, // normal text input field will be displayed
                                  maxLines: 100,
                                  onChanged: (value) {
                                    if (value.isNotEmpty) {
                                      // animate the icon button to show it can be clicked
                                      animationController.forward();
                                    } else {
                                      // animate the icon button back to its initial state
                                      animationController.reverse();
                                    }
                                  }),
                            )
                          : const Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: Text("No conversation choosen"))
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
