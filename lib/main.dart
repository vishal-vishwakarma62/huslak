import 'package:flutter/material.dart';
import 'package:huslak/Hotals.dart';
import 'package:huslak/Monthly_rental_apartments.dart';
import 'package:huslak/activities.dart';
import 'package:huslak/airport_transfer.dart';
import 'package:huslak/atm.dart';
import 'package:huslak/car_rental.dart';
import 'package:huslak/carer.dart';
import 'package:huslak/carer1.dart';
import 'package:huslak/categories.dart';
import 'package:huslak/choose_hospital.dart';
import 'package:huslak/emergency_number.dart';
import 'package:huslak/find_doctor.dart';
import 'package:huslak/find_doctor1.dart';
import 'package:huslak/flights.dart';
import 'package:huslak/gold_box.dart';
import 'package:huslak/login.dart';
import 'package:huslak/payment.dart';
import 'package:huslak/pharmacies.dart';
import 'package:huslak/profile.dart';
import 'package:huslak/restaurant_detail.dart';
import 'package:huslak/restaurants.dart';
import 'package:huslak/rooms.dart';
import 'package:huslak/short_stay_appartment.dart';
import 'package:huslak/splash.dart';
import 'package:huslak/super_market.dart';
import 'package:huslak/translation.dart';
import 'package:huslak/translation1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:categories (),

    );
  }
}

