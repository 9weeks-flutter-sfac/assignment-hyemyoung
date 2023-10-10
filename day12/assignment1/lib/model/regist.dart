class Regist {
  //클래스 멤버 변수
  String thumbnailImg;
  String name;
  String desc;
  int price;

  //클래스 생성자 함수
  Regist({
    required this.thumbnailImg,
    required this.name,
    required this.desc,
    required this.price,
  });

  //fromMap 생성자
  Regist.fromMap(Map<String, dynamic> map)
      : thumbnailImg = map["image"],
        name = map["name"],
        desc = map["description"],
        price = map["price"];

  @override
  String toString() {
    return "Regist($thumbnailImg / $name / $desc / $price)";
  }
}
