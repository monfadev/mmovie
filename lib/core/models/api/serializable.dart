abstract class Serializable {
  Map<String, dynamic> toJson();
  @override
  String toString() => toJson().toString();
}
