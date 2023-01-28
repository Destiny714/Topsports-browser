import 'package:encrypt/encrypt.dart';

String encryptedLink(String link) {
  int timestamp = DateTime.now().millisecondsSinceEpoch;
  String text2encrypt = 'tsmall#$timestamp#$link';
  final key = Key.fromUtf8('F3FBA721F9E9233D');
  final iv = IV.fromUtf8('f74ae0290a9e4b64');
  final encrypter = Encrypter(AES(key, mode: AESMode.cbc, padding: 'PKCS7'));
  final encryptedText = encrypter.encrypt(text2encrypt, iv: iv);
  final encryptedTextBase64 = encryptedText.base64;
  String fullLink =
      'https://wxmall.topsports.com.cn$link?tssign=$encryptedTextBase64';
  return fullLink;
}

String encryptedSign(String link) {
  int timestamp = DateTime.now().millisecondsSinceEpoch;
  String text2encrypt = 'tsmall#$timestamp#$link';
  final key = Key.fromUtf8('F3FBA721F9E9233D');
  final iv = IV.fromUtf8('f74ae0290a9e4b64');
  final encrypter = Encrypter(AES(key, mode: AESMode.cbc, padding: 'PKCS7'));
  final encryptedText = encrypter.encrypt(text2encrypt, iv: iv);
  String encryptedTextBase64 = encryptedText.base64;
  return encryptedTextBase64;
}
