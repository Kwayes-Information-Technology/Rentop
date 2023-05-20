import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:injectable/injectable.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:rentop/application/auth/auth_bloc.dart';
import 'package:rentop/application/navigation/navigation_bloc.dart';
import 'package:rentop/application/repositories/accountDetails/account_details_bloc.dart';
import 'package:rentop/application/repositories/billingAddress/billing_address_bloc.dart';
import 'package:rentop/application/repositories/cars/cars_bloc.dart';
import 'package:rentop/application/repositories/checkout/checkout_bloc.dart';
import 'package:rentop/application/repositories/contactUs/contact_us_bloc.dart';
import 'package:rentop/application/repositories/entries/entries_bloc.dart';
import 'package:rentop/application/repositories/entryCheckout/entry_checkout_bloc.dart';
import 'package:rentop/application/repositories/favourites/favourites_bloc.dart';
import 'package:rentop/application/repositories/listings/listings_bloc.dart';
import 'package:rentop/application/repositories/messages/messages_bloc.dart';
import 'package:rentop/application/repositories/shippingAddress/shipping_address_bloc.dart';
import 'package:rentop/application/reset_password/reset_password_bloc.dart';
import 'package:rentop/application/sign_in/sign_in_bloc.dart';
import 'package:rentop/application/sign_up/sign_up_bloc.dart';
import 'package:rentop/application/splash/splash_bloc.dart';
import 'package:rentop/injection.dart';
import 'package:rentop/presentation/core/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  configureInjection(Environment.prod);
  Stripe.publishableKey = dotenv.env['STRIPE_PUBLISHABLE_LIVE_KEY']!;
  await Stripe.instance.applySettings();
  OneSignal.shared.setAppId(dotenv.env['ONESIGNAL_APP_ID']!);
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<SignInBloc>()),
        BlocProvider(create: (context) => getIt<SignUpBloc>()),
        BlocProvider(
          create: (_) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.authCheckRequested(),
            ),
        ),
        BlocProvider(
          create: (_) => getIt<SplashBloc>()
            ..add(
              const SplashEvent.userCheckRequested(),
            ),
        ),
        BlocProvider(create: (context) => getIt<NavigationBloc>()),
        BlocProvider(
          create: (context) {
            return getIt<CarsBloc>()
              ..add(
                const CarsEvent.initial(),
              );
          },
        ),
        BlocProvider(create: (_) => getIt<ResetPasswordBloc>()),
        BlocProvider(
          create: (_) => getIt<ListingsBloc>()
            ..add(const ListingsEvent.fetchListingsData()),
        ),
        BlocProvider(create: (_) => getIt<CheckoutBloc>()),
        BlocProvider(create: (_) => getIt<EntriesBloc>()),
        BlocProvider(create: (_) => getIt<EntryCheckoutBloc>()),
        BlocProvider(create: (_) => getIt<MessagesBloc>()),
        BlocProvider(create: (_) => getIt<BillingAddressBloc>()),
        BlocProvider(create: (_) => getIt<ShippingAddressBloc>()),
        BlocProvider(create: (_) => getIt<AccountDetailsBloc>()),
        BlocProvider(
            create: (_) => getIt<FavouritesBloc>()
              ..add(const FavouritesEvent.fetchFavouritesData())),
        BlocProvider(create: (_) => getIt<ContactUsBloc>()),
      ],
      child: const AppWidget(),
    ),
  );
}
