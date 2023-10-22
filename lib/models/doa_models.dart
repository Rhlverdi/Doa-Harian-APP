class DoaModel {
  String? id;
  String? doa;
  String? ayat;
  String? latin;
  String? artinya;

  DoaModel({
    this.id,
    this.doa,
    this.ayat,
    this.latin,
    this.artinya,
  });

  factory DoaModel.fromMap(Map<String, dynamic> json) {
    return DoaModel(
      id: json['id'],
      doa: json['doa'],
      ayat: json['ayat'],
      latin: json['latin'],
      artinya: json['artinya'],
    );
  }
}
