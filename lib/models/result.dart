class Result {
  num? outCount;
  num? inCount;
  num? total;
  num? hour;

  Result({this.outCount, this.inCount, this.total, this.hour});

  Result.fromJson(dynamic json) {
    outCount = json['OutCount'];
    inCount = json['InCount'];
    total = json['total'];
    hour = json['hour'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['OutCount'] = this.outCount;
    data['InCount'] = this.inCount;
    data['total'] = this.total;
    data['hour'] = this.hour;
    return data;
  }
}
