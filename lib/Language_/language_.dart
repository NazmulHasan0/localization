import 'package:get/get.dart';
import 'package:localization/Language_/ban.dart';
import 'package:localization/Language_/eng.dart';

class Language extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': eng,
        'bn_BD': ban,
      };
}


/*
  @override করতে হবে
*/