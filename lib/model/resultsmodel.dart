class ResultModel{
  final String? image_Url;
  final String title;
  final String? description;
  ResultModel({
   required this.image_Url,
   required this.title,
    required this.description,
});

  String toString(){
    return 'ResultModel(image_Url : $image_Url, title: $title, description: $description)';
  }


}