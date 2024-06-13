import 'package:bloc/bloc.dart';
import 'package:flutter_cubit/app.dart';
import 'package:flutter_cubit/counter/cubit/counter_cubtit.dart';
import 'package:flutter_cubit/counter_observer.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());
}
