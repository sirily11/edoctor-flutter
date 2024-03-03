import '../database.dart';

class LearningCategoryTable extends SupabaseTable<LearningCategoryRow> {
  @override
  String get tableName => 'LearningCategory';

  @override
  LearningCategoryRow createRow(Map<String, dynamic> data) =>
      LearningCategoryRow(data);
}

class LearningCategoryRow extends SupabaseDataRow {
  LearningCategoryRow(super.data);

  @override
  SupabaseTable get table => LearningCategoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);
}
