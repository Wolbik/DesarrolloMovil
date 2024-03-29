import 'package:clima/location.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            Location location = Location();
            await location.getCurrentLocation();
            print(location.longitude);
            print(location.latitude);
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
