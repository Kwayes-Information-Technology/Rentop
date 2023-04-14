import 'package:dartz/dartz.dart';
import 'package:rentop/infrastructure/models/entry.dart';

abstract class IEntriesRepository {
  Future<Option<List<Entry>>> getEntries();
}
