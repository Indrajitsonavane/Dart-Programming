import 'dart:io';

class shop {
  String? shop_name;
  String? Address;

  shop() {
    shop_name = "big mart";
    Address = "patan";
  }

  void Display_Shop() {
    stdout.write("\n Shop Name =>$shop_name");
    stdout.write("\n Address =>$Address");
  }
}

class product extends shop {
  String? PName;
  int? Pprice;
  int? Sprice;

  product() {
    PName = "";
    Pprice = 0;
    Sprice = 0;
  }

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

class Product_Info extends shop {
  String? category;
  String? company;
  int? Sprice;

  product_Info() {
    category = "";
    company = "";
  }

  void AcceptE_Info() {
    product obj = product();
    obj.Accept_Info();

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
  obj.AcceptE_Info();
  obj.Display();
}
