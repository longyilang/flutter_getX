// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) => News(
      json['reason'] as String?,
      json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
      json['error_code'] as int?,
    );

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'reason': instance.reason,
      'result': instance.result,
      'error_code': instance.errorCode,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      json['stat'] as String?,
      (json['data'] as List<dynamic>?)
          ?.map((e) => NewsList.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['page'] as String?,
      json['pageSize'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'stat': instance.stat,
      'data': instance.data,
      'page': instance.page,
      'pageSize': instance.pageSize,
    };

NewsList _$NewsListFromJson(Map<String, dynamic> json) => NewsList(
      json['uniquekey'] as String?,
      json['title'] as String?,
      json['date'] as String?,
      json['category'] as String?,
      json['author_name'] as String?,
      json['url'] as String?,
      json['thumbnail_pic_s'] as String?,
      json['is_content'] as String?,
    );

Map<String, dynamic> _$NewsListToJson(NewsList instance) => <String, dynamic>{
      'uniquekey': instance.uniquekey,
      'title': instance.title,
      'date': instance.date,
      'category': instance.category,
      'author_name': instance.authorName,
      'url': instance.url,
      'thumbnail_pic_s': instance.thumbnailPicS,
      'is_content': instance.isContent,
    };
