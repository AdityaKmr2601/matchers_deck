class User {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final String bio;
  final String jobTitle;

  User(
      {required this.id,
      required this.name,
      required this.age,
      required this.imageUrls,
      required this.bio,
      required this.jobTitle});

  @override
  List<Object?> get props => [id, name, age, imageUrls, bio, jobTitle];

  static List<User> users = [
    User(
        id: 1,
        name: "Aditya",
        age: 20,
        imageUrls: [
          "https://plus.unsplash.com/premium_photo-1681245769078-c9f9d6d3bdfd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"
        ],
        bio: "lorrem",
        jobTitle: "jobTitle"),
    User(
        id: 2,
        name: "Aditya Kumar",
        age: 21,
        imageUrls: [
          "https://plus.unsplash.com/premium_photo-1681245769078-c9f9d6d3bdfd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"
        ],
        bio: "lorrem",
        jobTitle: "jobTitle"),
  ];
}
