enum RequestType {
  get('GET'),
  post('POST'),
  patch('PATCH');

  const RequestType(this.name);
  final String name;
}
