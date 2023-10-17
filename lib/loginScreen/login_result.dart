class LoginResult {
  final String accessToken;
  final String refreshToken;

  LoginResult({this.accessToken = "", this.refreshToken = ""});

  LoginResult.fromJson(Map<String, dynamic> json)
    : accessToken = json["data"]["accessToken"],
      refreshToken = json["data"]["refreshToken"];
}