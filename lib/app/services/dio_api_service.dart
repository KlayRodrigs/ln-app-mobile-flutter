import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ln_app/app/models/user_model.dart';
import 'package:ln_app/app/repositories/dio_api_repository.dart';

class DioApiService {
  final DioApiRepository _apiRepository = DioApiRepository(dio: Dio());

  permissaoLogin(
      {required String email,
      required String password,
      required BuildContext context}) {
    dynamic value = _apiRepository.getPermissaoLogar(
        email: email, password: password, context: context);
    return value;
  }

  cadastrarUsuario({required UserModel user, required BuildContext context}) {
    dynamic value =
        _apiRepository.postCadastroUser(user: user, context: context);
    return value;
  }
}
