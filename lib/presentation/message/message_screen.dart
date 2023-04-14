import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:rentop/application/repositories/messages/messages_bloc.dart';
import 'package:rentop/infrastructure/models/message.dart';
import 'package:rentop/infrastructure/style/colors.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MessagesBloc, MessagesState>(
        builder: (context, state) {
          if (state.selectedConversation != null) {
            context.read<MessagesBloc>().add(const MessagesEvent.scrollDown());
            return SafeArea(
              child: Stack(
                children: [
                  GroupedListView<Message, dynamic>(
                    controller: state.scrollController,
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(vertical: 100),
                    elements: state.selectedConversation!.messages,
                    groupBy: (element) => DateTime(
                      element.createdAt.year,
                      element.createdAt.month,
                      element.createdAt.day,
                    ),
                    groupSeparatorBuilder: (value) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        alignment: Alignment.center,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(3, 0),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 20,
                          ),
                          child: Text(
                            value.difference(DateTime.now()).inDays == 0
                                ? "Today"
                                : value.difference(DateTime.now()).inDays == -1
                                    ? "Yesterday"
                                    : DateFormat.yMd().format(value),
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      color: minorColor,
                                    ),
                          ),
                        ),
                      );
                    },
                    itemBuilder: (context, element) {
                      return RentopCards.rentopMessageTile(
                        message: element,
                        context: context,
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 23),
                      child: RentopCards.rentopMessageHeaderCard(
                        carPhoto: state.selectedConversation!.car.images.first,
                        carName: state.selectedConversation!.car.name,
                        context: context,
                        backBtn: () {
                          context.read<MessagesBloc>().add(
                                const MessagesEvent.selectedConversationChanged(
                                  null,
                                ),
                              );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 38, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(41),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.16),
                            offset: Offset(0, -4),
                            blurRadius: 15,
                          )
                        ],
                      ),
                      child: TextField(
                        controller: state.textEditingController,
                        cursorColor: mainColor,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(41),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(41),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Type your message",
                          hintStyle: Theme.of(context).textTheme.subtitle1,
                          suffixIcon: GestureDetector(
                            onTap: () => context
                                .read<MessagesBloc>()
                                .add(const MessagesEvent.sendMessage()),
                            child: Icon(
                              Icons.send,
                              color: mainColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
