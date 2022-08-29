part of 'services.dart';

class MailServices {
  Future<bool> sendEmailVerification(String email) async {
    final data = {'email': email};

    final resp = await http.post(
      Uri.parse('${Enviroments.serverHttpUrl}/sendmail'),
      body: jsonEncode(data),
      headers: {
        'Content-type': 'application/json',
        'x-token': await AuthService.getToken()
      },
    );

    if (resp.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> forgotPassword(String email) async {
    final data = {'email': email};

    final resp = await http.post(
      Uri.parse('${Enviroments.serverHttpUrl}/sendmail/recoverypassword'),
      body: jsonEncode(data),
      headers: {
        'Content-type': 'application/json',
      },
    );

    if (resp.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
