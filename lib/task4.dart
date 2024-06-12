abstract class Serializable {
  Map<String, dynamic> toJson();
}

class User implements Serializable {
  final String name;
  final int age;
  final int phoneNumber;

  User(this.name, this.age, this.phoneNumber);

  @override
  Map<String, dynamic> toJson() {
    return {'name': name, 'age': age, 'Phone Number': phoneNumber};
  }
}

class Product implements Serializable {
  final String productName;
  final double price;

  Product(this.productName, this.price);

  @override
  Map<String, dynamic> toJson() {
    return {
      'productName': productName,
      'price': price,
    };
  }
}

void main() {
  final user = User('Alice Smith', 25, 9876543210);
  final product = Product('Smartphone', 699.99);

  print(user.toJson());
  print(product.toJson());
}