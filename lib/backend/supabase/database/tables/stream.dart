import '../database.dart';

class StreamTable extends SupabaseTable<StreamRow> {
  @override
  String get tableName => 'Stream';

  @override
  StreamRow createRow(Map<String, dynamic> data) => StreamRow(data);
}

class StreamRow extends SupabaseDataRow {
  StreamRow(super.data);

  @override
  SupabaseTable get table => StreamTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  int get category => getField<int>('category')!;
  set category(int value) => setField<int>('category', value);

  String get author => getField<String>('author')!;
  set author(String value) => setField<String>('author', value);

  List<String> get tags => getListField<String>('tags');
  set tags(List<String> value) => setListField<String>('tags', value);

  String get cover => getField<String>('cover')!;
  set cover(String value) => setField<String>('cover', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);
}
