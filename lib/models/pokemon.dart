// To parse this JSON data, do
//
//     final pokemon = pokemonFromJson(jsonString);

import 'dart:convert';

Pokemon pokemonFromJson(String str) => Pokemon.fromJson(json.decode(str));

String pokemonToJson(Pokemon data) => json.encode(data.toJson());

class Pokemon {
  Pokemon({
    this.baseExperience,
    this.height,
    this.id,
    this.isDefault,
    this.locationAreaEncounters,
    this.name,
    this.order,
    this.types,
    this.weight,
  });

  int? baseExperience;
  int? height;
  int? id;
  bool? isDefault;
  String? locationAreaEncounters;
  String? name;
  int? order;
  List<Type>? types;
  int? weight;

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
    baseExperience: json["base_experience"] ?? '-',
    height: json["height"] ?? '-',
    id: json["id"] ?? '-',
    isDefault: json["is_default"] ?? '-',
    locationAreaEncounters: json["location_area_encounters"] ?? '-',
    name: json["name"] ?? '-',
    order: json["order"] ?? '-',
    weight: json["weight"] ?? '-',
  );

  Map<String, dynamic> toJson() => {
    "base_experience": baseExperience,
    "height": height,
    "id": id,
    "is_default": isDefault,
    "location_area_encounters": locationAreaEncounters,
    "name": name,
    "order": order,
    "weight": weight,
  };
}



