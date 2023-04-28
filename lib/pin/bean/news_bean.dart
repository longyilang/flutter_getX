import 'package:json_annotation/json_annotation.dart'; 
  
part 'news_bean.g.dart';


@JsonSerializable()
  class News extends Object {

  @JsonKey(name: 'reason')
  String? reason;

  @JsonKey(name: 'result')
  Result? result;

  @JsonKey(name: 'error_code')
  int? errorCode;

  News(this.reason,this.result,this.errorCode,);

  factory News.fromJson(Map<String, dynamic> srcJson) => _$NewsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$NewsToJson(this);

}

  
@JsonSerializable()
  class Result extends Object {

  @JsonKey(name: 'stat')
  String? stat;

  @JsonKey(name: 'data')
  List<NewsList>? data;

  @JsonKey(name: 'page')
  String? page;

  @JsonKey(name: 'pageSize')
  String? pageSize;

  Result(this.stat,this.data,this.page,this.pageSize,);

  factory Result.fromJson(Map<String, dynamic> srcJson) => _$ResultFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ResultToJson(this);

}

  
@JsonSerializable()
  class NewsList extends Object {

  @JsonKey(name: 'uniquekey')
  String? uniquekey;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'date')
  String? date;

  @JsonKey(name: 'category')
  String? category;

  @JsonKey(name: 'author_name')
  String? authorName;

  @JsonKey(name: 'url')
  String? url;

  @JsonKey(name: 'thumbnail_pic_s')
  String? thumbnailPicS;

  @JsonKey(name: 'is_content')
  String? isContent;

  NewsList(this.uniquekey,this.title,this.date,this.category,this.authorName,this.url,this.thumbnailPicS,this.isContent,);

  factory NewsList.fromJson(Map<String, dynamic> srcJson) => _$NewsListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$NewsListToJson(this);

}

  
