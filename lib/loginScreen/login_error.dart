class LoginError {
  final String code;
  final String description;
  final String message;

  LoginError({this.code = "", this.description = "", this.message = ""});

  LoginError.fromJson(Map<String, dynamic> json)
    : code = json["error"]["code"],
      description = json["error"]["description"],
      message = json["error"]["message"];
}