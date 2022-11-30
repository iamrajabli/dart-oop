void main(List<String> args) {
  Client clientHikmat = Client(999);

  print(clientHikmat.getClientId);
}

class Client {
  int? clientId;

  Client(int clientId) {
    // Using setter function in constructor
    this.validateClientId = clientId;
  }

  // Setter
  void set validateClientId(int clientId) {
    if (clientId < 9) {
      this.clientId = 99;
    } else
      this.clientId = clientId;
  }

  // Getter
  String get getClientId {
    return "Client id: ${this.clientId!}";
  }
}
