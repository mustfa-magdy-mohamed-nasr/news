// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_mdel.dart';

class ArticleModelAdapter extends TypeAdapter<ArticleModel> {
  @override
  final int typeId = 1;

  @override
  ArticleModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ArticleModel(
      author: fields[0] as String?,
      title: fields[1] as String?,
      description: fields[2] as String?,
      url: fields[3] as String?,
      urlToImage: fields[4] as String?,
      publishedAt: fields[5] as String?,
      content: fields[6] as String?,
      faverot: fields[7] as bool?, // Read 'faverot' field from binary data
    );
  }

  @override
  void write(BinaryWriter writer, ArticleModel obj) {
    writer
      ..writeByte(8) // Increase byte count to 8 for 8 fields
      ..writeByte(0)
      ..write(obj.author)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.url)
      ..writeByte(4)
      ..write(obj.urlToImage)
      ..writeByte(5)
      ..write(obj.publishedAt)
      ..writeByte(6)
      ..write(obj.content)
      ..writeByte(7)
      ..write(obj.faverot); // Write 'faverot' field to binary data
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArticleModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}