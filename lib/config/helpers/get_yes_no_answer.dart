import 'package:yes_no_2/domain/entities/message.dart';
import 'package:dio/dio.dart';
import 'package:yes_no_2/infrastructure/models/yes_no_models.dart';

class GetyesnoAnsewer {
  Future<Message> getYesNo() async {
    final _dio = Dio();
    final response = await _dio.get("https://yesno.wtf/api");

    final yesNomodel = YesNoModel.fromJsonMap(response.data);

    return yesNomodel.toMessageEntity();
  }
}
