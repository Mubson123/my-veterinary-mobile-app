class AppPattern {
  static const Pattern username = r'^[a-zA-Z0-9][a-zA-Z0-9_.]+[a-zA-Z0-9]$';

  static const Pattern name =
      r"^([A-Z][A-Za-z.'\-]+) (?:([A-Z][A-Za-z.'\-]+) )?([A-Z][A-Za-z.'\-]+)$";

  static const Pattern email =
      r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$";

  static const Pattern url =
      r"^((((H|h)(T|t)|(F|f))(T|t)(P|p)((S|s)?))\://)?(www.|[a-zA-Z0-9].)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,6}(\:[0-9]{1,5})*(/($|[a-zA-Z0-9\.\,\;\?\'\\\+&amp;%\$#\=~_\-]+))*$";

  static const Pattern phone =
      r'^(0|\+|(\+[0-9]{2,4}|\(\+?[0-9]{2,4}\)) ?)([0-9]*|\d{2,4}-\d{2,4}(-\d{2,4})?)$';

  static const Pattern hexadecimal = r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$';

  /// Image vector regex
  static const Pattern vector = r'.(svg)$';

  /// Image regex
  static const Pattern image = r'.(jpeg|jpg|gif|png|bmp)$';

  /// Audio regex
  static const Pattern audio = r'.(mp3|wav|wma|amr|ogg)$';

  /// Video regex
  static const Pattern video = r'.(mp4|avi|wmv|rmvb|mpg|mpeg|3gp)$';

  /// Txt regex
  static const Pattern txt = r'.txt$';

  /// Document regex
  static const Pattern doc = r'.(doc|docx)$';

  /// Excel regex
  static const Pattern excel = r'.(xls|xlsx)$';

  /// PPT regex
  static const Pattern ppt = r'.(ppt|pptx)$';

  /// APK regex
  static const Pattern apk = r'.apk$';

  /// PDF regex
  static const Pattern pdf = r'.pdf$';

  /// HTML regex
  static const Pattern html = r'.html$';

  /// DateTime regex (UTC)
  /// Unformatted date time (UTC and Iso8601)
  /// Example: 2020-04-27 08:14:39.977, 2020-04-27T08:14:39.977, 2020-04-27 01:14:39.977Z
  static const Pattern basicDateTime =
      r'^\d{4}-\d{2}-\d{2}[ T]\d{2}:\d{2}:\d{2}.\d{3}Z?$';

  /// Binary regex
  /// Consist only 0 & 1
  static const Pattern binary = r'^[0-1]*$';

  /// MD5 regex
  static const Pattern md5 = r'^[a-f0-9]{32}$';

  /// SHA1 regex
  static const Pattern sha1 =
      r'(([A-Fa-f0-9]{2}\:){19}[A-Fa-f0-9]{2}|[A-Fa-f0-9]{40})';

  /// SHA256 regex
  static const Pattern sha256 =
      r'([A-Fa-f0-9]{2}\:){31}[A-Fa-f0-9]{2}|[A-Fa-f0-9]{64}';

  /// SSN (Social Security Number) regex
  static const Pattern ssn =
      r'^(?!0{3}|6{3}|9[0-9]{2})[0-9]{3}-?(?!0{2})[0-9]{2}-?(?!0{4})[0-9]{4}$';

  /// IPv4 regex
  static const Pattern ipv4 =
      r'^(?:(?:^|\.)(?:2(?:5[0-5]|[0-4]\d)|1?\d?\d)){4}$';

  /// IPv6 regex
  static const Pattern ipv6 =
      r'^((([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){6}:[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){5}:([0-9A-Fa-f]{1,4}:)?[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){4}:([0-9A-Fa-f]{1,4}:){0,2}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){3}:([0-9A-Fa-f]{1,4}:){0,3}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){2}:([0-9A-Fa-f]{1,4}:){0,4}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){6}((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|(([0-9A-Fa-f]{1,4}:){0,5}:((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|(::([0-9A-Fa-f]{1,4}:){0,5}((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|([0-9A-Fa-f]{1,4}::([0-9A-Fa-f]{1,4}:){0,5}[0-9A-Fa-f]{1,4})|(::([0-9A-Fa-f]{1,4}:){0,6}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){1,7}:))$';

  /// ISBN 10 & 13 regex
  static const Pattern isbn =
      r'(ISBN(\-1[03])?[:]?[ ]?)?(([0-9Xx][- ]?){13}|([0-9Xx][- ]?){10})';

  /// Github repository regex
  static const Pattern github =
      r'((git|ssh|http(s)?)|(git@[\w\.]+))(:(\/\/)?)([\w\.@\:/\-~]+)(\.git)(\/)?';

  /// Passport No. regex
  static const Pattern passport = r'^(?!^0+$)[a-zA-Z0-9]{6,9}$';

  /// Currency regex
  static const Pattern currency =
      r'^(S?\$|\₩|Rp|\¥|\€|\₹|\₽|fr|R$|R)?[ ]?[-]?([0-9]{1,3}[,.]([0-9]{3}[,.])*[0-9]{3}|[0-9]+)([,.][0-9]{1,2})?( ?(USD?|AUD|NZD|CAD|CHF|GBP|CNY|EUR|JPY|IDR|MXN|NOK|KRW|TRY|INR|RUB|BRL|ZAR|SGD|MYR))?$';

  /// Numeric Only regex (No Whitespace & Symbols)
  static const Pattern numericOnly = r'^\d+$';

  /// Alphabet Only regex (No Whitespace & Symbols)
  static const Pattern alphabetOnly = r'^[a-zA-Z]+$';

  /// Password (Easy) Regex
  /// Allowing all character except 'whitespace'
  /// Minimum character: 8
  static const Pattern passwordEasy = r'^\S{8,}$';

  /// Password (Easy) Regex
  /// Allowing all character
  /// Minimum character: 8
  static const Pattern passwordEasyAllowedWhitespace = r'^[\S ]{8,}$';

  /// Password (Normal) Regex
  /// Allowing all character except 'whitespace'
  /// Must contains at least: 1 letter & 1 number
  /// Minimum character: 8
  static const Pattern passwordNormal1 = r'^(?=.*[A-Za-z])(?=.*\d)\S{8,}$';

  /// Password (Normal) Regex
  /// Allowing all character
  /// Must contains at least: 1 letter & 1 number
  /// Minimum character: 8
  static const Pattern passwordNormal1AllowedWhitespace =
      r'^(?=.*[A-Za-z])(?=.*\d)[\S ]{8,}$';

  /// Password (Normal) Regex
  /// Allowing LETTER and NUMBER only
  /// Must contains at least: 1 letter & 1 number
  /// Minimum character: 8
  static const Pattern passwordNormal2 =
      r'^(?=.*[A-Za-z])(?=.*\d)[a-zA-Z0-9]{8,}$';

  /// Password (Normal) Regex
  /// Allowing LETTER and NUMBER only
  /// Must contains: 1 letter & 1 number
  /// Minimum character: 8
  static const Pattern passwordNormal2AllowedWhitespace =
      r'^(?=.*[A-Za-z])(?=.*\d)[a-zA-Z0-9 ]{8,}$';

  /// Password (Normal) Regex
  /// Allowing all character except 'whitespace'
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter & 1 number
  /// Minimum character: 8
  static const Pattern passwordNormal3 =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)\S{8,}$';

  /// Password (Normal) Regex
  /// Allowing all character
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter & 1 number
  /// Minimum character: 8
  static const Pattern passwordNormal3AllowedWhitespace =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[\S ]{8,}$';

  /// Password (Hard) Regex
  /// Allowing all character except 'whitespace'
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter, 1 number, & 1 special character (symbol)
  /// Minimum character: 8
  static const Pattern passwordHard =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])\S{8,}$';

  /// Password (Hard) Regex
  /// Allowing all character
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter, 1 number, & 1 special character (symbol)
  /// Minimum character: 8
  static const Pattern passwordHardAllowedWhitespace =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])[\S ]{8,}$';

  static const Pattern postalCode = r"^\d{5}(-\d{4})?$";

  static const Pattern htmlTags =
      r"^<(?:([A-Za-z][A-Za-z0-9]*)\b[^>]*>(?:.*?)</\1>|[A-Za-z][A-Za-z0-9]*\b[^/>]*/>)$";

  static const Pattern creditCard =
      r"^(?:3[47]\d{2}([\- ]?)\d{6}\1\d{5}|(?:4\d{3}|5[1-5]\d{2}|6011)([\- ]?)\d{4}\2\d{4}\2\d{4})$";

  static const Pattern onlyNumber = r'^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$';

}
