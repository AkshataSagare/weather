import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../consts.dart';
import '../../../models/city_model.dart';

class PickLocationScreen extends StatefulWidget {
  const PickLocationScreen({super.key});

  @override
  State<PickLocationScreen> createState() => _PickLocationScreenState();
}

class _PickLocationScreenState extends State<PickLocationScreen> {
  List<City> cities = [];
  TextEditingController searchController = TextEditingController();

  Future<List<City>> fetchCities(String input) async {
    final uri = Uri.parse(
      'http://api.openweathermap.org/geo/1.0/direct?q=$input&limit=5&appid=$WEATHER_API_KEY',
    );

    final res = await http.get(uri);

    if (res.statusCode == 200) {
      List<dynamic> data = jsonDecode(
        const Utf8Decoder().convert(res.bodyBytes),
      );

      return data.map<City>((city) {
        return City(
          name: city['name'],
          state: city['state'],
          country: city['country'],
        );
      }).toList();
    } else {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 25),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: TextField(
                  controller: searchController,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (val) async {
                    if (val.isNotEmpty) {
                      final fetchedCities = await fetchCities(val);
                      setState(() {
                        cities = fetchedCities;
                      });
                    }
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: cities.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(cities[index].name),
                    subtitle: Text(
                      "${cities[index].state ?? ''} ${cities[index].country}",
                    ),
                    onTap: () async {
                      Navigator.pop(context, cities[index].name);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
