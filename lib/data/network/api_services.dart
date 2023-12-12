// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'dart:io';

import 'package:weather_app/data/app_exceptions.dart';
import 'package:weather_app/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class ApiServices extends BaseApiServices {
  dynamic jsonResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      // case 400:
      //   var jsonResponse = jsonDecode(response.body);
      //   return jsonResponse;
      default:
        throw FetchDataExceptions(
            "Error while communication ${response.statusCode}");
    }
  }

  @override
  Future getApi(String url) async {
    var jsonData;

    try {
      var response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      jsonData = jsonResponse(response);
    } on RequestTimeOut {
      throw RequestTimeOut("Request Timed Out");
    } on SocketException {
      throw InternetExceptions("No Internet");
    }
    return jsonData;
  }
}
