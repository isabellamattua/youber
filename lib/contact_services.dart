import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:intl/intl.dart';



import 'contact.dart';

class ContactService {
  static const _serviceUrl = 'https://gateway-staging.ncrcloud.com/cdm/consumers';


  String createContact(Contact contact){
    final _headers = {'Content-Type': 'application/json',
      'Authorization': 'AccessKey 59625b8fe9c646c3985f03861e183f88:hRBCFt8OqV849BE+GvTNQOE3I6gqrvY6s31ZJF5Zy/zdtgM9aOIWBMtz+hxjblaoni4aeiQDwRxHh5IBnet3/w==',
      'nep-organization': '99e687277e4444e3871ae5e0e0f846c2',
      'Date': 'Sun, 18 Oct 2020 09:31:39 GMT'};
    var mapData = new Map();
    String fName = contact.firstName;
    String bday = new DateFormat.yMd().format(contact.birthDate);
    String pnumber = contact.phone;
    String email = contact.profileUsername;
    String payload = "{\n  \"firstName\": \"$fName\",\n  \"birthDate\": \"$bday\",\n  \"phone\": \"$pnumber\",\n  \"profileUsername\": \"$email\"\n\n}";

    String json = jsonEncode(payload);

    return json;
  }
}

