import 'dart:convert';

class DataResponse<T> {
  DataResponse({
    required this.message,
    this.code,
    this.data,
    this.error = false,
  });

  bool error;
  String message;
  int? code;
  T? data;

  DataResponse<T> copyWith({
    bool? error,
    String? message,
    int? code,
    T? data,
  }) {
    return DataResponse<T>(
      error: error ?? this.error,
      code: code ?? this.code,
      data: data ?? data,
      message: message ?? this.message,
    );
  }

  factory DataResponse.fromRawJson(String str) => DataResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DataResponse.fromJson(Map<String, dynamic> json) => DataResponse(
        error: json["error"],
        code: json["code"],
        message: json["message"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "code": code,
        "message": message,
        "data": data,
      };
}
