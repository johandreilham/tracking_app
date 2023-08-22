import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tracking_app/config/model/model_resi.dart';

class CResi {
  static const String baseUrl =
      'https://partner-api.21express.co.id/publics/tracking';
  static const String apiKey = 'X*kLJ=GDcA1q';
  static const String siscoToken =
      'AFHK/U9L0LSDYSZNQCX+JY3BUJG5LBUU/ZYMTTS2ONWST9JP6DCDRDP8JDUXFYUB';

  Future<ResiModel?> getData(String resiNo) async {
    final Map<String, String> headers = {
      'api-key': apiKey,
      'sisco-token': siscoToken,
    };

    final Map<String, String> queryParams = {'resi_no': resiNo};
    final Uri uri = Uri.parse(baseUrl).replace(queryParameters: queryParams);
    final response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = json.decode(response.body);
      return ResiModel.fromJson(jsonResponse);
    } else {
      print('Error: Status Code ${response.statusCode}');
      return null;
    }
  }
}
