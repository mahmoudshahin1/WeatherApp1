import 'package:dio/dio.dart';
import 'package:project/core/util/constant.dart';
import 'package:project/data/model/weather_model.dart';

 abstract class BaseReomteDataSource {
  Future<WeatherModel?>  getWeatherByCountryName (String countryName);


 }

  class ReomteDataSource implements BaseReomteDataSource{
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
    var response = await Dio().get('${AppConstant.baseUrl}/weather?q=$countryName&appid=${AppConstant.apiconst}');
    print(response);
    return WeatherModel.fromJason(response.data);
    
  } catch (e) {
    
    return null;
  }
  }
  
  

  }




  
  