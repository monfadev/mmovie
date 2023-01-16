import 'serializable.dart';

class APIResponse<T> extends Serializable {
  APIResponse({
    this.status,
    this.message,
    this.data,
    this.others,
  });

  int? status;
  String? message;
  T? data;
  Map<String, dynamic>? others;

  factory APIResponse.fromJson(Map<String, dynamic> json) {
    var filtered = Map<String, dynamic>.from(json);
    if (filtered.containsKey("statusCode")) filtered.remove("statusCode");
    if (filtered.containsKey("message")) filtered.remove("message");
    if (filtered.containsKey("data")) filtered.remove("data");

    var others = filtered;

    return APIResponse(
      status: json.containsKey("statusCode") ? int.tryParse(json["statusCode"]?.toString() ?? "0") : int.tryParse(json["code"]?.toString() ?? "0"),
      message: json["message"],
      data: json.containsKey("data") ? json["data"] : null,
      others: others,
    );
  }

  factory APIResponse.failure(String message, int statusCode) {
    return APIResponse(status: 401, message: message, data: null);
  }

  @override
  Map<String, dynamic> toJson() => {
        "statusCode": status,
        "message": message,
        "data": data,
        "others": others,
      };
}
