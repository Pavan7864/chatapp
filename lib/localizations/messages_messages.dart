import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

// ignore: unused_element
final _keepAnalysisHappy = Intl.defaultLocale;

// ignore: non_constant_identifier_names
typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'messages';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "attendance" : MessageLookupByLibrary.simpleMessage("Attendance"),
    "contacts" : MessageLookupByLibrary.simpleMessage("Contacts"),
    "language" : MessageLookupByLibrary.simpleMessage("عربي"),
    "links" : MessageLookupByLibrary.simpleMessage("Links"),
    "login" : MessageLookupByLibrary.simpleMessage("Login"),
    "not_valid_username" : MessageLookupByLibrary.simpleMessage("Not Valid Username"),
    "password" : MessageLookupByLibrary.simpleMessage("password"),
    "password_is_too_short" : MessageLookupByLibrary.simpleMessage("password is too short"),
    "profile" : MessageLookupByLibrary.simpleMessage("Profile"),
    "support" : MessageLookupByLibrary.simpleMessage("Support"),
    "username" : MessageLookupByLibrary.simpleMessage("Username")
  };
}