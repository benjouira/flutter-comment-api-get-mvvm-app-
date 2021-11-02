class PostModel {
  int? id;
  int? userId;
  String? title;
  String? body;

  PostModel({this.id, this.userId, this.title, this.body});

  PostModel.fromJson(Map<String, dynamic> json) {
    // Map<String,dynamic> json ma3neha sna3na variable esmha json el type mte3ha Map
    // el Map ya9bal Key w Value , ya3ni el type mte3 el key string w el type mte3 el value dynamic
    id = json['id'];
    userId = json['userId'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {"userId": id, "id": userId, "title": title, "body": body};
  }
}
