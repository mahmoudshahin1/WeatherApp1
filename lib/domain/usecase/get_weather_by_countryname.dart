import 'package:project/domain/entites/weather.dart';
import 'package:project/domain/repositry/base_weather_rebositry.dart';

class GetWeatherByCountryName{

final BaseWeatherRebosatry rebosatry;

  GetWeatherByCountryName(this.rebosatry);

 Future<Weather> execute(String cityName)async{

    return await rebosatry.getWeatherByCityName(cityName);
  }

}