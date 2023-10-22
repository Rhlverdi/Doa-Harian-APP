class SurahModel {
  String? name;
  NameTranslations? nameTranslations;
  int? numberOfSurah;
  String? recitation;

  SurahModel({
    this.name,
    this.nameTranslations,
    this.numberOfSurah,
    this.recitation,
  });

  factory SurahModel.fromMap(Map<String, dynamic> json) {
    return SurahModel(
      numberOfSurah: json['number_of_surah'],
      name: json['name'],
      nameTranslations: NameTranslations.fromMap(json['name_translations']),
      recitation: json['recitation'],
    );
  }
}

class NameTranslations {
  String? ar;
  String? en;
  String? id;

  NameTranslations({
    this.ar,
    this.en,
    this.id,
  });

  factory NameTranslations.fromMap(Map<String, dynamic> json) {
    return NameTranslations(
      ar: json['ar'],
      en: json['en'],
      id: json['id'],
    );
  }
}
