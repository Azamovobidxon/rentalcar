class Cars {
  double price;
  String name;
  String color;
  int number;

  Cars({
    required this.price,
    required this.name,
    required this.color,
    required this.number,
  });

  bool operator ==(Object? Other) {
    return Other is Cars &&
        price == Other.price &&
        name == Other.color &&
        number == Other.number;
  }

  @override
  int get hashCode => Object.hashAll(
        ["price", "name", "color", "type"],
      );

  @override
  String toString() {
    return "price:$price,name: $name,color: $color,number: $number";
  }
}
