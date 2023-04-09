class News {
  String? reason;
  Result? result;
  int? errorCode;

  News({this.reason, this.result, this.errorCode});

  News.fromJson(Map<String, dynamic> json) {
    reason = json['reason'];
    result = json['result'] != null ? Result?.fromJson(json['result']) : null;
    errorCode = json['error_code'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['reason'] = reason;
    if (result != null) {
      data['result'] = result?.toJson();
    }
    data['error_code'] = errorCode;
    return data;
  }
}

class Result {
  String? stat;
  List<News>? news;
  String? page;
  String? pageSize;

  Result({this.stat, this.news, this.page, this.pageSize});

  Result.fromJson(Map<String, dynamic> json) {
    stat = json['stat'];
    if (json['news'] != null) {
      news = <News>[];
      json['news'].forEach((v) {
        news?.add(News.fromJson(v));
      });
    }
    page = json['page'];
    pageSize = json['pageSize'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['stat'] = stat;
    if (news != null) {
      data['news'] = news?.map((v) => v.toJson()).toList();
    }
    data['page'] = page;
    data['pageSize'] = pageSize;
    return data;
  }
}
