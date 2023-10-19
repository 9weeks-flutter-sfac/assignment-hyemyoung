class ApiRoutes {
  static const String baseUrl = 'http://52.79.115.43:8090/api/collections/';

  static const String usersRead = baseUrl + 'users/records?sort=-created';
  static const String usersLogin = baseUrl + 'users/auth-with-password';
  static const String usersSignUp = baseUrl + 'users/records';
  static const String secretsRead = baseUrl + 'secrets/records?sort=-created';
  static const String secretsUpload = baseUrl + 'secrets/records';
}
