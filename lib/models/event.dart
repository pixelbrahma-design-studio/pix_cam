class Event {
  CountEvent? countEvent;
  String? deviceId;

  Event({this.countEvent, this.deviceId});

  Event.fromJson(dynamic json) {
    countEvent = json['countEvent'] != null ? CountEvent.fromJson(json['countEvent']) : null;
    deviceId = json['deviceId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.countEvent != null) {
      data['countEvent'] = this.countEvent!.toJson();
    }
    data['deviceId'] = this.deviceId;
    return data;
  }
}

class CountEvent {
  String? timeStamp;
  String? line;
  String? eventType;
  int? id;

  CountEvent({this.timeStamp, this.line, this.eventType, this.id});

  CountEvent.fromJson(dynamic json) {
  timeStamp = json['timeStamp'];
  line = json['line'];
  eventType = json['eventType'];
  id = json['id'];
  }

  Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = Map<String, dynamic>();
  data['timeStamp'] = this.timeStamp;
  data['line'] = this.line;
  data['eventType'] = this.eventType;
  data['id'] = this.id;
  return data;
  }
}