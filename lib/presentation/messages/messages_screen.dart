import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rentop/application/auth/auth_bloc.dart';
import 'package:rentop/application/repositories/messages/messages_bloc.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';
import 'package:rentop/presentation/widgets/rentop_widgets.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 23),
        child: Column(
          children: [
            RentopCards.rentopAppBar(
              title: 'Messages',
              context: context,
              backBtn: false,
              btn: null,
            ),
            const SizedBox(
              height: 7,
            ),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                if (state is Authenticated) {
                  return BlocBuilder<MessagesBloc, MessagesState>(
                    builder: (context, state) {
                      return Expanded(
                        child: SmartRefresher(
                          controller: state.refreshController,
                          enablePullUp: true,
                          onRefresh: () => context
                              .read<MessagesBloc>()
                              .add(const MessagesEvent.refreshData()),
                          onLoading: () => context
                              .read<MessagesBloc>()
                              .add(const MessagesEvent.fetchMessagesData()),
                          child: ListView.builder(
                            itemCount: state.conversations.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return RentopCards.rentopMessageCard(
                                conversation: state.conversations[index],
                                context: context,
                              );
                            },
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: rentopGuestUserWarning(context: context));
                }
              },
            ),
            // if (context.read<AuthBloc>().state is Authenticated)
            //   BlocBuilder<MessagesBloc, MessagesState>(
            //     builder: (context, state) {
            //       return Expanded(
            //         child: SmartRefresher(
            //           controller: state.refreshController,
            //           enablePullUp: true,
            //           onRefresh: () => context
            //               .read<MessagesBloc>()
            //               .add(const MessagesEvent.refreshData()),
            //           onLoading: () => context
            //               .read<MessagesBloc>()
            //               .add(const MessagesEvent.fetchMessagesData()),
            //           child: ListView.builder(
            //             itemCount: state.conversations.length,
            //             shrinkWrap: true,
            //             itemBuilder: (context, index) {
            //               return RentopCards.rentopMessageCard(
            //                 conversation: state.conversations[index],
            //                 context: context,
            //               );
            //             },
            //           ),
            //         ),
            //       );
            //     },
            //   )
            // else
            //   Padding(
            //       padding: const EdgeInsets.only(top: 18),
            //       child: rentopGuestUserWarning(context: context)),
          ],
        ),
      ),
    );
  }
}
