import 'package:http/http.dart' as http;

Future<http.Response> getCountries () async {
  try {
    http.Response result = await http.get("http://api.worldbank.org/v2/country/?format=json");
    return result;
  } catch (e) {
    print('An error occured while getting the list of countries, Please make sure you have a stable internet connection and try again later $e');
  }
}