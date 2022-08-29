import 'dart:async';
import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:neo_wallet/models/models.dart';
import 'package:neo_wallet/utils/utils.dart';
import 'package:http/http.dart' as http;
import 'package:neo_wallet/enviroments/variables_enviroments.dart'
    as Enviroments;
import 'package:socket_io_client/socket_io_client.dart' as IO;

part 'auth_services.dart';
part 'mail_services.dart';
part 'qr_services.dart';
part 'socket_service.dart';
part 'transactions_services.dart';
part 'wallet_services.dart';
part 'push_notification_services.dart';
