import 'package:flutter/material.dart';
import 'package:rentop/presentation/widgets/rentop_buttons.dart';
import 'package:rentop/presentation/widgets/rentop_cards.dart';
import 'package:rentop/presentation/widgets/rentop_textfields.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 23),
                child: Column(
                  children: [
                    RentopCards.rentopAppBar(
                      title: 'Contact Us',
                      context: context,
                      backBtn: true,
                      btn: null,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Form(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: RentopTextFields.rentopTextField(
                                    context: context,
                                    onChanged: (val) {},
                                    hintText: "First Name",
                                    onVaildator: null,
                                    suffixIcon: null,
                                    obsecureText: false,
                                  ),
                                ),
                                const SizedBox(
                                  width: 11,
                                ),
                                Flexible(
                                  child: RentopTextFields.rentopTextField(
                                    context: context,
                                    onChanged: (val) {},
                                    hintText: "Last Name",
                                    onVaildator: null,
                                    suffixIcon: null,
                                    obsecureText: false,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            RentopTextFields.rentopTextField(
                              context: context,
                              onChanged: (val) {},
                              hintText: "Email",
                              onVaildator: null,
                              suffixIcon: null,
                              obsecureText: false,
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            RentopTextFields.rentopTextField(
                              context: context,
                              onChanged: (val) {},
                              hintText: "Phone Number",
                              onVaildator: null,
                              suffixIcon: null,
                              obsecureText: false,
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            RentopTextFields.rentopTextField(
                              context: context,
                              onChanged: (val) {},
                              hintText: "Message",
                              onVaildator: null,
                              suffixIcon: null,
                              obsecureText: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: RentopButtons.rentopButton(
                text: "Send Message",
                context: context,
                onBtnPressed: () {},
                width: double.infinity,
              ),
            ),
          )
        ],
      ),
    );
  }
}
