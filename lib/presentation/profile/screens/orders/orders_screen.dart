import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rentop/application/repositories/entries/entries_bloc.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 23),
          child: Column(
            children: [
              RentopCards.rentopAppBar(
                title: "My Orders",
                context: context,
                backBtn: true,
                btn: null,
              ),
              const SizedBox(
                height: 15,
              ),
              BlocBuilder<EntriesBloc, EntriesState>(
                builder: (context, state) {
                  return Expanded(
                    child: SmartRefresher(
                      controller: state.refreshController,
                      onRefresh: () => context.read<EntriesBloc>().add(
                            const EntriesEvent.refreshData(),
                          ),
                      onLoading: () => context.read<EntriesBloc>().add(
                            const EntriesEvent.fetchEntriesData(),
                          ),
                      child: ListView.builder(
                        itemCount: state.entries.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return RentopCards.rentopEntryCard(
                            entry: state.entries[index],
                            context: context,
                          );
                        },
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
