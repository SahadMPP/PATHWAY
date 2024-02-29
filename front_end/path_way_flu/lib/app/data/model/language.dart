
class Language {
  final int id;
  final String flag;
  final String name;
  final String languageCode;

  Language(this.id, this.flag, this.name, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1, Language.toEmoji('fr'), 'English', "en"),
      Language(2, Language.toEmoji('in'), 'हिंदी', "hi"),
      Language(3, Language.toEmoji('ar'), 'عربي', "ar"),
      Language(4, Language.toEmoji('gf'), 'française', "fa"),
      Language(5, Language.toEmoji('it'), 'italiana', "fr"),
    ];
  }

  static String toEmoji(String code) {
    return code
        .split('')
        .map((letter) => letter.codeUnitAt(0) % 32 + 0x1F1E5)
        .map((e) => String.fromCharCode(e))
        .join('');
  }
}
