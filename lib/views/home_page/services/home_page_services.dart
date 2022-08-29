import 'package:srk_monitor/services/api/api.dart';
import 'package:srk_monitor/services/http_services.dart';

import '../../../services/base_resopnse.dart';

class HomePageServices {
  static HomePageServices? _instance;
  factory HomePageServices() => _instance ??= HomePageServices._();
  HomePageServices._();

  Future<BaseResponse> getRoomInfo(String roomId) async {
    try {
      Map<String, dynamic> queryParams = {
        'room_id': roomId,
      };
      final urlParams = Uri(queryParameters: queryParams).query;
      final url = '${getRoomInfoUrl()}?$urlParams';
      // final response = await http.get(Uri.parse(url));
      // final jsonData = json.decode(response.body);
      final jsonData = await HttpService().get(url);
      BaseResponse baseResponse = BaseResponse.fromJson(jsonData);
      return baseResponse;
    } catch (e) {
      BaseResponse result = BaseResponse.fromFail({}, {});
      return result;
    }
  }
}
