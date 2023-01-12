class Result {
  num? outCount;
  num? day;
  num? time;
  num? inCount;

  Result({this.outCount, this.day, this.time, this.inCount});

  Result.fromJson(dynamic json) {
    outCount = json['OutCount'];
    day = json['day'];
    time = json['time'];
    inCount = json['InCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['OutCount'] = this.outCount;
    data['day'] = this.day;
    data['time'] = this.time;
    data['InCount'] = this.inCount;
    return data;
  }
}
