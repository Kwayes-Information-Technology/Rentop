import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rentop/infrastructure/models/car_review.dart';
import 'package:rentop/infrastructure/style/colors.dart';

class RentopReview {
  static Widget rentopCarReview({
    required CarReview review,
    required BuildContext context,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(review.authorAvater),
                radius: 27,
              ),
              const SizedBox(
                width: 9,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        review.author,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 15),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: mainColor,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            review.rating.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontSize: 17, color: mainColor),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    DateFormat("dd MMMM yyyy").format(review.date),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 10),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            review.content,
            style:
                Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14),
          ),
          ListView.builder(
            itemCount: review.replies.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(top: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: const Color.fromRGBO(0, 0, 0, 0.07),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      review.replies[index].displayName,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      review.replies[index].replyMsg,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
