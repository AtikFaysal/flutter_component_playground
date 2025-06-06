class ProfileApiEntity {
  final int userId;
  final String email;
  final String name;
  final String role;
  final String avatar;
  const ProfileApiEntity({
    required this.userId,
    required this.email,
    required this.name,
    required this.role,
    required this.avatar,
  });
}
