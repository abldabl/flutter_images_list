class UserModelData {
  final String id;
  final int? updatedAt;
  final String username;
  final String name;
  final String? firstName;
  final String? lastName;

  const UserModelData({
    required this.id,
    this.updatedAt,
    required this.username,
    required this.name,
    this.firstName,
    this.lastName,
  });
}
