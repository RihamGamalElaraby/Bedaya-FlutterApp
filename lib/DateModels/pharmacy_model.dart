class PharmacyModel {
  String? nameDrug;
  int? numberDrug;
  DateTime? expiryDateDrug;
  String? codeDrug;
  bool? expiry;
  int? strip;
  int? allStrips;

  PharmacyModel(
      {this.codeDrug,
      this.expiryDateDrug,
      this.nameDrug,
      this.numberDrug,
      this.strip,
      this.allStrips,
      this.expiry = false});

  PharmacyModel.fromFirebase(Map<String, dynamic> json)
      : this(
          strip: json["strip"],
          allStrips: json["allStrips"],
          expiry: json["expiry"],
          codeDrug: json["codeDrug"],
          expiryDateDrug:
              DateTime?.fromMicrosecondsSinceEpoch(json["expiryDateDrug"]),
          nameDrug: json["nameDrug"],
          numberDrug: json["numberDrug"],
        );

  Map<String, dynamic> toFirebase() {
    return {
      "allStrips": allStrips,
      "strip": strip,
      "expiry": expiry,
      "codeDrug": codeDrug,
      "expiryDateDrug": expiryDateDrug?.microsecondsSinceEpoch,
      "nameDrug": nameDrug,
      "numberDrug": numberDrug,
    };
  }
}
