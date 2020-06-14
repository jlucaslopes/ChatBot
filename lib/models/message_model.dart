import 'dart:convert';

class Message {
  final bool eu;
  final String horario;
  final String texto;

  Message({
    this.eu,
    this.horario,
    this.texto,
  });

  factory Message.fromJson(String str) => Message.fromMap(json.decode(str));
  String toJson() => json.encode(toMap());

    factory Message.fromMap(Map<String, dynamic> json) => Message(
        eu: (json["eu"] is String) ? int.parse(json["eu"]) : json["eu"],
        horario: json["horario"],
        texto: json["texto"],
    );

   Map<String, dynamic> toMap() => {
        "eu": eu,
        "horario": horario,
        "texto": texto,
    };
}


