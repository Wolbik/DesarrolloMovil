// To parse this JSON data, do
//
//     final requestModel = requestModelFromJson(jsonString);

import 'dart:convert';

import 'package:proyecto_chat/entities/message.dart';

RequestModel requestModelFromJson(String str) => RequestModel.fromJson(json.decode(str));

String requestModelToJson(RequestModel data) => json.encode(data.toJson());

class RequestModel {
  final String answer;
  final bool forced;
  final String image;

  RequestModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory RequestModel.fromJson(Map<String, dynamic> json) => RequestModel(
    answer: json["answer"],
    forced: json["forced"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "answer": answer,
    "forced": forced,
    "image": image,
  };

  //mapper
  Message convertToMessage(){
    return Message(text: answer, fromWho: FromWho.yours, imageURL: image);
  }

}