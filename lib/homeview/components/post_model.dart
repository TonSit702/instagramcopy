

import 'user_model.dart';

class PostModel {
  String id;
  UserModel user;
  int likes;
  String description;
  String picture;
  int comments;
  bool isSponsored;
  PostModel({
    required this.id,
    required this.user,
    required this.likes,
    required this.description,
    required this.picture,
    required this.comments,
    required this.isSponsored,
  });
}

String description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.";
List<PostModel> posts = [
  PostModel(
    id: '1',
    user: users[0],
    likes: 104,
    description: description,
    picture:
        'https://images.unsplash.com/photo-1433086966358-54859d0ed716?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    comments: 23,
    isSponsored: false,
  ),
  PostModel(
    id: '2',
    user: users[1],
    likes: 87,
    description: description,
    picture:
        'https://images.unsplash.com/photo-1527269534026-c86f4009eace?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    comments: 9,
    isSponsored: false,
  ),
  PostModel(
    id: '3',
    user: users[2],
    likes: 120,
    description: description,
    picture:
        'https://images.unsplash.com/photo-1606788075819-9574a6edfab3?q=80&w=2068&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    comments: 23,
    isSponsored: true,
  ),
  PostModel(
    id: '4',
    user: users[3],
    likes: 65,
    description: description,
    picture:
        'https://images.unsplash.com/photo-1604005950576-8745a5c40581?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    comments: 3,
    isSponsored: false,
  ),
  PostModel(
    id: '5',
    user: users[4],
    likes: 92,
    description: description,
    picture:
        'https://images.unsplash.com/photo-1524245365559-a858a6543626?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    comments: 12,
    isSponsored: true,
  ),
  PostModel(
    id: '6',
    user: users[5],
    likes: 110,
    description: description,
    picture:
        'https://images.unsplash.com/photo-1602936710641-da116c8bf517?q=80&w=1885&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    comments: 22,
    isSponsored: false,
  ),
];
