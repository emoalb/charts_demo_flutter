class Entry {
  final int id;
  final String item;

  Entry({this.id, this.item});
  factory Entry.fromMap(Map<String, dynamic> json) => new Entry(
    id: json["id"],
    item: json["item"],
  );
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'item': item,
    };
  }
}
