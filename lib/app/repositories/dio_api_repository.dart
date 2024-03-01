import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ln_app/app/exceptions/alert_exception_widget.dart';
import 'package:ln_app/app/exceptions/api_exception.dart';
import 'package:ln_app/app/interfaces/api_interface.dart';
import 'package:ln_app/app/models/user_model.dart';

class DioApiRepository implements ApiInterface {
  AlertExceptionWidget alertExceptionWidget = AlertExceptionWidget();
  final Dio _dio;

  DioApiRepository({required Dio dio}) : _dio = dio;

  Options options = Options(
    headers: {"app": "583f0a5b-c017-4956-b788-a6305767c117"},
  );

  @override
  Future<bool> getPermissaoLogar(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      const url = '$BASE_URL/api/v1/auth/login';
      final response = await _dio.post(
        url,
        data: {"username": email, "password": password},
        options: options,
      );
      if (response.statusCode == 200) {
        return true;
      } else {
        throw Exception("Usuário não cadastrado");
      }
    } on DioException catch (e) {
      // ignore: use_build_context_synchronously
      checkDioExceptions(e.type, context, true);
      throw Exception(e);
    }
  }

  @override
  Future<bool> postCadastroUser(
      {required UserModel user, required BuildContext context}) async {
    try {
      const url = '$BASE_URL/api/v1/auth/users';
      final response = await _dio.post(
        url,
        data: {
          "email": user.email,
          "name": user.name,
          "phone": user.phone,
          "password": user.password
        },
        options: options,
      );
      if (response.statusCode == 200) {
        return true;
      } else {
        throw Exception("Usuário já cadastrado");
      }
    } on DioException catch (e) {
      // ignore: use_build_context_synchronously
      checkDioExceptions(e.type, context, false);
      throw Exception(e);
    }
  }

  void checkDioExceptions(
      DioExceptionType e, BuildContext context, bool loginOrCadstro) {
    ApiException apiException = ApiException();
    List<String> errorMessage =
        apiException.getExeptionMessage(e, loginOrCadstro);

    alertExceptionWidget.showAlertExceptionWidget(
        context: context, title: errorMessage[0]);
  }
}
