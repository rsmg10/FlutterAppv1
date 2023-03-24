
class SigninDto{
  final String Username;
  final String password;
  SigninDto({required this.Username,required this.password});



  Map toJson() => {
    'userName': Username,
    'password': password
  };
  factory SigninDto.fromJson(Map<String, dynamic> json){
    return SigninDto(password: json['password'] as String,
      Username: json['username'] as String,
    );
  }

}
