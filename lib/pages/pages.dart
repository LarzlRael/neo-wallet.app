import 'dart:convert';
import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:clipboard/clipboard.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ionicons/ionicons.dart';
import 'package:neo_wallet/helpers/helpers.dart';
import 'package:neo_wallet/models/models.dart';
import 'package:neo_wallet/services/services.dart';
import 'package:neo_wallet/shared_preferences/shared_preferences.dart';
import 'package:neo_wallet/utils/utils.dart';
import 'package:neo_wallet/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'auth_pages/forgot_password.dart';
part 'auth_pages/login_page.dart';
part 'auth_pages/register_page.dart';
part 'auth_pages/verify_account.dart';

part 'bottom_navigation/wallet_page.dart';
part 'bottom_navigation/user_transactions_history_page.dart';
part 'bottom_navigation/managament_page.dart';

part 'loading_pages/loading_page.dart';
part 'navigation/bottom_navigation.dart';

part 'profile_pages/transaction_by_wallet.dart';
part 'profile_pages/user_profile.dart';

part 'send_receive/qr_page.dart';
part 'send_receive/send_page.dart';

part 'tabs/assets_tab_page.dart';
part 'tabs/transactions_tab_page.dart';

part 'wallet_pages/items_page.dart';
part 'wallet_pages/new_wallet.dart';
part 'wallet_pages/users_wallet_select.dart';
