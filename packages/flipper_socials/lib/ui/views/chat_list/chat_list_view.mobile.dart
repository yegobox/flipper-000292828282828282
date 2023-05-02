import 'dart:developer';

import 'package:custom_floating_action_button/custom_floating_action_button.dart';
import 'package:flipper_models/isar_models.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flipper_socials/ui/widgets/list_of_messages.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flipper_routing/app.locator.dart';
import 'package:flipper_routing/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'chat_list_viewmodel.dart';
import 'package:flutter/scheduler.dart';

class ChatListViewMobile extends StatefulWidget {
  const ChatListViewMobile({super.key});

  @override
  State<ChatListViewMobile> createState() => _ChatListViewMobileState();
}

class _ChatListViewMobileState extends State<ChatListViewMobile>
    with SingleTickerProviderStateMixin {
  final _routerService = locator<RouterService>();
  List<Conversation>? conversations;
  late AnimationController _progressController;

  @override
  void initState() {
    super.initState();
    _progressController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
  }

  @override
  void dispose() {
    _progressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ViewModelBuilder<ChatListViewModel>.reactive(
        viewModelBuilder: () => ChatListViewModel(),
        onViewModelReady: (viewModel) {
          SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
            if (ProxyService.box.getBranchId() != null &&
                ProxyService.box.getBusinessId() != null &&
                ProxyService.box.getUserId() != null) {
              ProxyService.remoteApi.listenToChanges();
            }
          });
        },
        builder: (build, viewModel, child) {
          return CustomFloatingActionButton(
            body: SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  title: Text('Chat List',
                      style: GoogleFonts.poppins(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )),
                  // An icon button that shows a plus icon to initiate a new chat
                  actions: [
                    IconButton(
                      icon: const Icon(FluentIcons.qr_code_24_regular),
                      onPressed: () {
                        _routerService
                            .navigateTo(ScannViewRoute(intent: "login"));
                      },
                    ),
                    IconButton(
                      icon: const Icon(FluentIcons.add_24_regular),
                      onPressed: () {
                        // TODO: implement the logic to initiate a new chat
                      },
                    ),
                    // An icon button that shows a logout icon to sign out
                    IconButton(
                      icon: const Icon(FluentIcons.sign_out_24_regular),
                      onPressed: () async {
                        await ProxyService.isarApi.logOut();
                        // navigate to login page
                        _routerService
                            .clearStackAndShow(const LoginViewRoute());
                      },
                    ),
                  ],
                ),
                body: StreamBuilder<List<Conversation>>(
                    stream: ProxyService.isarApi.conversations(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                        final _conversations = snapshot.data;
                        conversations = _conversations!;
                        return CustomScrollView(
                          slivers: [
                            // A sliver app bar that shows the top recent chat heads
                            SliverPadding(
                              padding: const EdgeInsets.only(top: 5.0),
                              sliver: SliverAppBar(
                                automaticallyImplyLeading: false,
                                // Make the app bar pinned so it stays visible
                                pinned: true,
                                // Make the app bar expanded so it takes more space
                                expandedHeight: 100,
                                // Make the app bar transparent so it blends with the background
                                backgroundColor: Colors.transparent,
                                // A flexible space widget that shows the chat heads in a row
                                flexibleSpace: FlexibleSpaceBar(
                                  titlePadding: EdgeInsets.zero,
                                  title: StreamBuilder<List<Conversation>>(
                                    stream: ProxyService.isarApi
                                        .getTop5RecentConversations(),
                                    builder: (context, snapshot) {
                                      if (snapshot.hasData &&
                                          snapshot.data!.isNotEmpty) {
                                        final conversations = snapshot.data!;
                                        return SizedBox(
                                          height: 70,
                                          child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: conversations.length,
                                            itemBuilder: (context, index) {
                                              final conversation =
                                                  conversations[index];
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      conversation.avatar),
                                                  radius: 30,
                                                ),
                                              );
                                            },
                                          ),
                                        );
                                      } else {
                                        return const SizedBox.shrink();
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                            // A sliver list that displays the chat conversations
                            SliverPadding(
                              padding: const EdgeInsets.only(top: 8.0),
                              sliver: SliverList(
                                delegate: SliverChildBuilderDelegate(
                                  (context, index) {
                                    return ListOfMessages(
                                      conversations: conversations!,
                                      size: size,
                                      viewModel: viewModel,
                                      index: index,
                                    );
                                  },
                                  // The child count is the length of the chat list
                                  childCount: conversations!.length,
                                ),
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Center(
                            child: Text("No Conversations",
                                style: GoogleFonts.poppins(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                )));
                      }
                    }),
                bottomNavigationBar: NavigationBarTheme(
                  data: NavigationBarThemeData(
                    backgroundColor: Colors.white,
                    indicatorColor: Colors.white,
                    labelTextStyle: MaterialStateProperty.all(
                      const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: NavigationBar(
                      height: 90,
                      selectedIndex: 1,
                      labelBehavior:
                          NavigationDestinationLabelBehavior.alwaysShow,
                      backgroundColor: Colors.white,
                      elevation: 0,
                      animationDuration: const Duration(seconds: 2),
                      onDestinationSelected: (index) {
                        switch (index) {
                          case 0:
                            viewModel.navigateToAppCenter();
                            break;
                          case 1:
                            log("1");
                            break;
                          default:
                        }
                      },
                      destinations: const [
                        NavigationDestination(
                          icon: Icon(FluentIcons.dialpad_24_regular),
                          label: 'App Center',
                          selectedIcon: Icon(
                            FluentIcons.dialpad_24_regular,
                            color: Color(0xff006AFE),
                          ),
                        ),
                        NavigationDestination(
                          icon: Icon(FluentIcons.shopping_bag_24_regular),
                          label: 'Requests',
                          selectedIcon: Icon(
                            FluentIcons.shopping_bag_24_regular,
                            color: Color(0xff006AFE),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            options: const [
              CircleAvatar(
                child: Icon(Icons.translate),
              ),
              CircleAvatar(
                child: Icon(Icons.email),
              ),
              CircleAvatar(
                child: Icon(Icons.star),
              ),
            ],
            spaceFromBottom: 110,
            type: CustomFloatingActionButtonType.horizontal,
            openFloatingActionButton: const Icon(Icons.add),
            closeFloatingActionButton: const Icon(Icons.close),
          );
        });
  }
}
