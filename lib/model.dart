
class Model{
  String? image;
  String? text;
  Model(this.image,this.text);
}
List lis = modelData.map((e) => Model(e["image"],e["text"])).toList();

var modelData = [
  {"image":"assets/sana.jpg","text":"Twice"},
  {"image":"assets/mv1.jpg","text":"Viking Siege"},
  {"image":"assets/mv2.jpg","text":"John Wick 1"},
  {"image":"assets/mv.jpg","text":"John Wick 2"},
  {"image":"assets/mv4.jpg","text":"John Wick 3"},
  {"image":"assets/mv5.jpg","text":"John Wick 4"},
  {"image":"assets/jy.jpg","text":"Jeongyeon"},
  {"image":"assets/mv4.jpg","text":"John Wick 4"},
];

// class Tvshow{
//   String? tvshow;
//   String? tvtext;
//   dad(this.tvshow,this.tvtext);
// }
// List mlis = modelData.map((e) => Tvshow(e["tvshow"],e["tvtext"])).toList();
//
// var show = [
//   {"tvshow":"assets/tv1","tvtext":"Friends"},
//   {"tvshow":"assets/tv2","tvtext":"Wednesday"},
//   {"tvshow":"assets/tv3","tvtext":"Umbrella Academy"},
//   {"tvshow":"assets/tv4","tvtext":"The Wire"},
// ];