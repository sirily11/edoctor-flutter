import '../database.dart';

class IntroductionCarouselTable extends SupabaseTable<IntroductionCarouselRow> {
  @override
  String get tableName => 'IntroductionCarousel';

  @override
  IntroductionCarouselRow createRow(Map<String, dynamic> data) =>
      IntroductionCarouselRow(data);
}

class IntroductionCarouselRow extends SupabaseDataRow {
  IntroductionCarouselRow(super.data);

  @override
  SupabaseTable get table => IntroductionCarouselTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get coverImage => getField<String>('cover_image')!;
  set coverImage(String value) => setField<String>('cover_image', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);
}
