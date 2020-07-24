import 'package:dio/dio.dart';

class HomeRepository {
  final Dio dio;

  HomeRepository(this.dio);

  getTeste() async {
    Response response = await dio.get('/combo/cliente');
    print(response);
  }
}
