int fact(int no) {
  if (no <= 1) {
    return 1;
  }
  return no * fact(no - 1);
}

void main() {
  print(fact(5));
}
