import 'dart:io';

mixin shop {
  String? shop_name = "big mart";
  String? Address = "patan";

  void Display_Shop() {
    stdout.write("\n Shop Name =>$shop_name");
    stdout.write("\n Address =>$Address");
  }
}

mixin product {
  String? PName;
  int? Pprice;
  int? Sprice;

  void Accept_Info() {
    stdout.write("Enter Product Name =>");
    PName = stdin.readLineSync()!;

    stdout.write(" Enter Product purchase Price =>");
    Pprice = int.parse(stdin.readLineSync() ?? '');

    stdout.write(" Enter Product salse Price =>");
    Sprice = int.parse(stdin.readLineSync() ?? '');
  }

  void Display() {
    stdout.write("\n Product Name =>$PName");
    stdout.write("\n Product product Price =>$Pprice");
  }
}

class Product_Info with product, shop {
  String? category;
  String? company;
  int? Sprice;

  product_Info() {
    category = "";
    company = "";
  }

  void AcceptE_Info() {
    stdout.write("Enter Product Category =>");
    category = stdin.readLineSync()!;

    stdout.write(" Enter Product Company =>");
    company = stdin.readLineSync()!;
  }

  void Display() {
    stdout.write("\n Product salse Price =>$Sprice");
    stdout.write("\n Product category Price =>$category");
    stdout.write("\n Product Company =>$company");
  }
}

void main() {
  Product_Info obj = new Product_Info();

  obj.Display_Shop();
  obj.Accept_Info();
  obj.AcceptE_Info();
  obj.Display();
}
