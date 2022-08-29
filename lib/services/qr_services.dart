part of 'services.dart';

class QrService {
  Future<String> getWalletQr(String walletId) async {
    //
    final data = {'url': walletId};

    final resp = await http.post(
      Uri.parse('${Enviroments.serverHttpUrl}/qr'),
      headers: {
        'Content-type': 'application/json',
        'x-token': await AuthService.getToken()
      },
      body: jsonEncode(data),
    );

    final respBody = jsonDecode(resp.body);
    return respBody['srcImage'];
  }

  Future<bool> createNewWallet(String walletName) async {
    final data = {'walletName': walletName};

    final resp = await http.post(
      Uri.parse(
        '${Enviroments.serverHttpUrl}/wallet/createwallet',
      ),
      headers: {
        'Content-type': 'application/json',
        'x-token': await AuthService.getToken(),
      },
      body: jsonEncode(data),
    );
    final respBody = jsonDecode(resp.body);
    return respBody['ok'];
  }
}
