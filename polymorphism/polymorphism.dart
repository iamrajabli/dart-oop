void main(List<String> args) {
  // Upcasting
  Moderator user1 = Moderator();
  Moderator user2 = Admin();
  Moderator user3 = SuperAdmin();

  List<Moderator> users = [];
  users.add(user1);
  users.add(user2);
  users.add(user3);

  // Polymorphism
  poly(user1);
}

void poly(Moderator methods) {
  print(methods.hi());
}

class Moderator {
  List<String> users = ['iamrajabli', 'netmain', 'prost', 'whemao'];

  Map<String, String> langs = {
    'az': 'Azerbaijani',
    'en': 'English',
    'ru': 'Russian',
    'ge': 'German'
  };

  Moderator() {
    print(this);
  }

  String hi() {
    return "Hi, Moderator!";
  }

  List<String> getUsers() {
    return this.users;
  }

  Map<String, String> getLangs() {
    return this.langs;
  }

  Map<String, String> get getLangsWithoutGe {
    Map<String, String> newLangs = {...this.langs};
    newLangs.remove('ge');
    return newLangs;
  }
}

class Admin extends Moderator {
  List<String> transactions = ['1', '2', '3', '4', '5'];
  String social = 'https://www.facebook.com/iamrajabli';

  @override
  String hi() {
    return "Hi, Admin!";
  }

  List<String> getTransactions() {
    return this.transactions;
  }

  String getSocial() {
    return this.social;
  }
}

class SuperAdmin extends Admin {
  List<int> payments = [2, 3, 4, 5, 6, 7, 8, 9, 10].map((e) => e * 2).toList();

  @override
  String hi() {
    return "Hi, Super Admin!";
  }

  List<int> getPayments() {
    return this.payments;
  }
}
