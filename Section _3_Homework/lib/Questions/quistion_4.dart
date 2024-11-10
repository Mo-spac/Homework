void main() {
  Map<String, Map<String, dynamic>> weatherData = {
    "Cairo": {
      "temperature": 22.0,
      "humidity": 65,
      "condition": "Sunny",
    },
    "London": {
      "temperature": 16.0,
      "humidity": 68,
      "condition": "Cloudy",
    },
    "Paris": {
      "temperature": 30.5,
      "humidity": 65,
      "condition": "Rainy",
    },
    "Milano": {
      "temperature": 30.5,
      "humidity": 50,
      "condition": "Sunny",
    },
  };

  printWeatherDetails(weatherData, "Cairo");
  printWeatherDetails(weatherData, "London");
  printWeatherDetails(weatherData, "Aswan");
  printWeatherDetails(weatherData, "Paris");
  printWeatherDetails(weatherData, "Milano");

  print("**************");

  printWeatherDetailsWithOOP("Monaco");
  printWeatherDetailsWithOOP("Riyadh");
  printWeatherDetailsWithOOP("Dubai");
  printWeatherDetailsWithOOP("New York");
  printWeatherDetailsWithOOP("Tokyo");
}

void printWeatherDetails(
    Map<String, Map<String, dynamic>> weatherDataForCities, String city) {
  if (weatherDataForCities.containsKey(city)) {
    var details = weatherDataForCities[city];
    print("Weather in $city:");
    print("   Temperature: ${details!['temperature']}°C");
    print("   Humidity: ${details['humidity']}%");
    print("   Condition: ${details['condition']}");
  } else {
    print("Weather data for ($city) is not available.");
  }
}

// With OOP
class Weather {
  double temperature;
  int humidity;
  String condition;

  Weather(this.temperature, this.humidity, this.condition);
}

Map<String, Weather> weatherData = {
  "Monaco": Weather(30.5, 40, "Sunny"),
  "Riyadh": Weather(42.0, 20, "Rainy"),
  "New York": Weather(25.0, 60, "Cloudly"),
  "Tokyo": Weather(28.3, 55, "Sunny")
};

void printWeatherDetailsWithOOP(String city) {
  if (weatherData.containsKey(city)) {
    Weather weather = weatherData[city]!;
    print("Weather in $city:");
    print("   Temperature: ${weather.temperature} °C");
    print("   Humidity: ${weather.humidity}%");
    print("   Condition: ${weather.condition}");
  } else {
    print("   Weather data for ($city) is not available.");
  }
}
