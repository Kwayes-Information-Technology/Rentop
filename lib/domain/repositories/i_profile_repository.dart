import 'package:dartz/dartz.dart';
import 'package:rentop/infrastructure/models/profile.dart';

abstract class IProfileRepository {
  Future<Option<Profile>> getProfile();
}
