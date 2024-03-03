import '../database.dart';

class VideoTable extends SupabaseTable<VideoRow> {
  @override
  String get tableName => 'Video';

  @override
  VideoRow createRow(Map<String, dynamic> data) => VideoRow(data);
}

class VideoRow extends SupabaseDataRow {
  VideoRow(super.data);

  @override
  SupabaseTable get table => VideoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get category => getField<int>('category')!;
  set category(int value) => setField<int>('category', value);

  List<String> get tags => getListField<String>('tags');
  set tags(List<String> value) => setListField<String>('tags', value);

  String get cover => getField<String>('cover')!;
  set cover(String value) => setField<String>('cover', value);

  int get viewCount => getField<int>('view_count')!;
  set viewCount(int value) => setField<int>('view_count', value);

  String get author => getField<String>('author')!;
  set author(String value) => setField<String>('author', value);

  String get videoUrl => getField<String>('video_url')!;
  set videoUrl(String value) => setField<String>('video_url', value);
}
