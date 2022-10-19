import 'package:srk_monitor/core/data/api/api.dart';
import 'package:srk_monitor/core/data/dto/home_page/live_user_dto.dart';
import 'package:srk_monitor/core/data/http_services/http_services.dart';

import '../../dto/base_resopnse.dart';

class LiveUserInfoDataSource {
  final HttpService httpService = HttpService();
  Future<BaseResponse> getLiveUser(String uid) async {
    try {
      Map<String, dynamic> queryParams = {
        'uid': uid,
      };
      final urlParams = Uri(queryParameters: queryParams).query;
      final url = '${getLiveUserInfoUrl()}?$urlParams';
      final jsonData = await httpService.get(url);
      if (jsonData.isNotEmpty) {
        BaseResponse baseResponse =
            BaseResponse.fromSuccess({}, LiveUserDto.fromJson(jsonData));
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
