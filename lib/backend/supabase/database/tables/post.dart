import '../database.dart';

class PostTable extends SupabaseTable<PostRow> {
  @override
  String get tableName => 'Post';

  @override
  PostRow createRow(Map<String, dynamic> data) => PostRow(data);
}

class PostRow extends SupabaseDataRow {
  PostRow(super.data);

  @override
  SupabaseTable get table => PostTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String get content => getField<String>('content')!;
  set content(String value) => setField<String>('content', value);

  int get category => getField<int>('category')!;
  set category(int value) => setField<int>('category', value);

  String get cover => getField<String>('cover')!;
  set cover(String value) => setField<String>('cover', value);

  List<String> get tags => getListField<String>('tags');
  set tags(List<String> value) => setListField<String>('tags', value);

  int get viewCount => getField<int>('view_count')!;
  set viewCount(int value) => setField<int>('view_count', value);

  bool get isPublic => getField<bool>('is_public')!;
  set isPublic(bool value) => setField<bool>('is_public', value);

  String get authorUid => getField<String>('author_uid')!;
  set authorUid(String value) => setField<String>('author_uid', value);
}
