import 'Users.dart';

class Client {
  int id;
  String name;
  String icon;
  int qtdCall;
  int color;
  List<User> users;

  Client({this.id, this.name, this.icon, this.qtdCall, this.users, this.color});

  Client.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    icon = json['icon'];
    qtdCall = json['qtd_call'];
    if (json['users'] != null) {
      users = new List<User>();
      json['users'].forEach((v) {
        users.add(new User.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['icon'] = this.icon;
    data['qtd_call'] = this.qtdCall;
    if (this.users != null) {
      data['users'] = this.users.map((v) => v.toJson()).toList();
    }
    return data;
  }
}