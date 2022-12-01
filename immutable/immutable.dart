void main(List<String> args) {
  final String name = "Hikmat";
  const String surname = "Rajabli";

  final time = DateTime.now();
  // const time2 = DateTime.now();
  print(time);

  final List<int> arr1 = [1, 2, 3, 4, 5];
  final List<int> arr2 = [1, 2, 3, 4, 5];
  print(arr1 == arr2);

  const List<int> arr3 = [1, 2, 3, 4, 5];
  const List<int> arr4 = [1, 2, 3, 4, 5];
  print(arr3 == arr4);

  print(name);
  print(surname);
}
