import 'package:project/domain/entites/weather.dart';

abstract class BaseWeatherRebosatry{

  Future<Weather> getWeatherByCityName(String cityName);
}