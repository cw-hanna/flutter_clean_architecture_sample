


import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String? name;
  final String? email;
  final String? date;

  const User({
    this.name,
    this.email,
    this.date,
  });

  @override
  List<Object?> get props {
    return [name, email, date];
  }
}
