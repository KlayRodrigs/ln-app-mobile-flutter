import 'package:dio/dio.dart';

class ApiException {
  List<String> getExeptionMessage(
      DioExceptionType dioException, bool loginOrCadastro) {
    switch (dioException) {
      case DioExceptionType.badResponse:
        return [
          loginOrCadastro
              ? "Usuário inválido ou não cadastrado"
              : "Usuário inválido ou já cadastrado"
        ];

      case DioExceptionType.connectionError:
        return [
          "Erro de conexão, verifique a sua rede",
        ];
      case DioExceptionType.connectionTimeout:
        return [
          "Tempo excedido na solicitação, verifique a sua rede",
        ];
      case DioExceptionType.cancel:
        return [
          "Solicitação cancelada, verifique a sua rede",
        ];

      default:
        return ["Erro desconhecido, tente novamente. $dioException.type"];
    }
  }
}
