import 'package:flutter/material.dart';
import 'package:ln_app/app/models/user_model.dart';

const String BASE_URL = "https://bis365.com.br/bid365";

abstract class ApiInterface {
  Future<bool> getPermissaoLogar(
      {required String email,
      required String password,
      required BuildContext context});
  Future<bool> postCadastroUser(
      {required UserModel user, required BuildContext context});
}
