import 'package:srk_monitor/services/api/api.dart';
import 'package:srk_monitor/services/http_services.dart';

import '../../../services/base_resopnse.dart';
import '../models/responses/room_info_response_data.dart';

class HomePageServices {
  static HomePageServices? _instance;
  factory HomePageServices() => _instance ??= HomePageServices._();
  HomePageServices._();
  final HttpService httpService = HttpService();
  Future<BaseResponse> getRoomInfo(String roomId) async {
    try {
      Map<String, dynamic> queryParams = {
        'room_id': roomId,
      };
      final urlParams = Uri(queryParameters: queryParams).query;
      final url = '${getRoomInfoUrl()}?$urlParams';
      final jsonData = await httpService.get(url);
      if (jsonData.isNotEmpty) {
        BaseResponse baseResponse =
            BaseResponse.fromSuccess({}, RoomInfoResponse.fromJson(jsonData));
        return baseResponse;
      } else {
        return BaseResponse.fromFail(jsonData, {});
      }
    } catch (e) {
      BaseResponse result = BaseResponse.fromFail({}, {});
      return result;
    }
  }
}
