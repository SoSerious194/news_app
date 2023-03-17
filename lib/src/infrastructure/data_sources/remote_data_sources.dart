import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class RemoteDataServices {
  static String? key = dotenv.env['APIKEY'];
  static Map apiList = {
    "otherNewsFeed":
        "https://newsapi.org/v2/top-headlines?country=in&country=us&category=general&pageSize=100&apiKey=$key",
    "ScinceNewsFeed":
        "https://newsapi.org/v2/top-headlines?country=in&country=us&category=science&pageSize=100&apiKey=$key",
    "techNewsFeed":
        "https://newsapi.org/v2/top-headlines?country=in&country=us&category=technology&pageSize=100&apiKey=$key",
    "sportsNewsFeed":
        "https://newsapi.org/v2/top-headlines?country=in&category=sport&pageSize=100&apiKey=$key",
    "businessNewsFeed":
        "https://newsapi.org/v2/top-headlines?country=in&country=us&category=business&pageSize=100&apiKey=$key"
  };

  static Future getNewsResults(String catogery) async {
    try {
      Response response = await Dio().get(apiList[catogery]);
      return response.data;
    } catch (e) {
      // log(e.toString());
      return {};
    }
  }
}
