class MyData
{
  final int userId;
  final int id;
  final String title;
  final String body;

  MyData({this.userId, this.id, this.title, this.body});

  factory MyData.fromJson(Map<String, dynamic> json) {
    return MyData(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}