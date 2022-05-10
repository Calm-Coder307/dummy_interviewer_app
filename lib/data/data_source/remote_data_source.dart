import 'dart:convert';

import '../models/interviewer_model.dart';
import 'package:http/http.dart' as http;

class RemoteDataSource {
  Future<List<InterviewerModel>> getData() async {
    return _getDataFromUrl('https://randomuser.me/api/?seed=ab&inc=name,cell&results=20');
  }

  Future<List<InterviewerModel>> _getDataFromUrl(String url) async {
    final response = await http.get(Uri.parse(url));
  
    if(response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)['results'];
      return Future.value(jsonResponse.map((user) => InterviewerModel.fromJson(user)).toList());
    }
    else {
      return [];
    }
  }
}
