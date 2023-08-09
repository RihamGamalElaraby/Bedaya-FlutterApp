class PharmacyModel {
  String? nameDrug;
  int? numberDrug;
  DateTime? expiryDateDrug;
  String? codeDrug;
  bool? expiry;

  PharmacyModel(
      {this.codeDrug,
      this.expiryDateDrug,
      this.nameDrug,
      this.numberDrug,
      this.expiry = false});

  PharmacyModel.fromFirebase(Map<String, dynamic> json)
      : this(
          expiry: json["expiry"],
          codeDrug: json["codeDrug"],
          expiryDateDrug:
              DateTime?.fromMicrosecondsSinceEpoch(json["expiryDateDrug"]),
          nameDrug: json["nameDrug"],
          numberDrug: json["numberDrug"],
        );

  Map<String, dynamic> toFirebase() {
    return {
      "expiry": expiry,
      "codeDrug": codeDrug,
      "expiryDateDrug": expiryDateDrug?.microsecondsSinceEpoch,
      "nameDrug": nameDrug,
      "numberDrug": numberDrug,
    };
  }
}
// هو دة كله انا لسة هنا؟