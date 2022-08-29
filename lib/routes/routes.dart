import 'package:flutter/material.dart';

import 'package:neo_wallet/pages/pages.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  /* Register and login  */
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),

  //? Bottom navigation pages
  'home': (_) => BottomNavigation(),
  'loading': (_) => LoadingPage(),
  'transactionHistory': (_) => UserTransactionsHistoryPage(),

  // ?
  'sendPage': (_) => SendPage(),
  'newWallet': (_) => NewWallet(),
  'qrPage': (_) => QrPage(),
  'usersWallets': (_) => ManagamentPage(),
  'userWalletSelect': (_) => UserWalletSelect(),
  'transactionByWallet': (_) => TransactionByWallet(),

  'userProfile': (_) => UserProfile(),
  'verifyAccount': (_) => VerifyAccount(),
  'forgotPassword': (_) => ForgotPassword(),
};
