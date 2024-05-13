class SourceModel{
  final  String? id;
  final  String? name;
  SourceModel({required this.id, required this.name});

  String toString(){
    return 'SourceModel(id: $id, name: $name)';
  }
}