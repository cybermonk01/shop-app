class CustomerModel {
  String email;
  String name;
  String password;

  CustomerModel({
    this.email,
    this.name,
    this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map.addAll({
      'email': email,
      'name': name,
      'password': password,
      'username': email
    });

    return map;
  }
}
