import 'package:project/data/datasource/remote_datasource.dart';
import 'package:project/domain/entites/weather.dart';
import 'package:project/domain/repositry/base_weather_rebositry.dart';

class WeatherRepositry implements BaseWeatherRebosatry{

   final BaseReomteDataSource baseReomteDataSource;

  WeatherRepositry(this.baseReomteDataSource);
  @override
  Future<Weather> getWeatherByCityName(String countryName) async{
 return (await baseReomteDataSource.getWeatherByCountryName(countryName));
    }

}