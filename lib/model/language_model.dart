// ignore_for_file: public_member_api_docs, sort_constructors_first
class LanguageModel {
  String languagename;
  String languagecode;
  String countrycode;
  LanguageModel({
    required this.languagename,
    required this.languagecode,
    required this.countrycode,
  });

  @override
  String toString() =>
      'LanguageModel(languagename: $languagename, languagecode: $languagecode, countrycode: $countrycode)';
}
