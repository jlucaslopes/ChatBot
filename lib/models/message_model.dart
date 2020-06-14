import 'dart:convert';

class Message {
    Message({
        this.eu,
        this.horario,
        this.texto,
    });

    int eu;
    String horario;
    String texto;

    factory Message.fromJson(String str) => Message.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Message.fromMap(Map<String, dynamic> json) => Message(
        eu: json["EU"],
        horario: json["HORARIO"],
        texto: json["TEXTO"],
    );

    Map<String, dynamic> toMap() => {
        "EU": eu,
        "HORARIO": horario,
        "TEXTO": texto,
    };
}
