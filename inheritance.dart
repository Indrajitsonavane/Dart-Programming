import 'dart:io';

class product {
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
}

class Product_Info extends product {
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
    stdout.write("\n Product Name =>$PName");
    stdout.write("\n Product product Price =>$Pprice");
    stdout.write("\n Product salse Price =>$Sprice");
    stdout.write("\n Product category Price =>$category");
    stdout.write("\n Product Company =>$company");
  }
}

void main() {
  Product_Info obj = new Product_Info();

  obj.Accept_Info();
  obj.AcceptE_Info();
  obj.Display();
}
