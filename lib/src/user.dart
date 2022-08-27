class User {
  late String email;

  User(this.email);
}

class AdminUser extends User with EmailInfo {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

mixin EmailInfo on User {
  String getMailSystem() {
    String domain = super.email.split("@").last;
    return domain;
  }
}

class UserManager<T extends User> {
  List<T> usersList = [];

  void addUser(T user) {
    usersList.add(user);
  }

  void deleteUser(T user) {
    usersList.remove(user);
  }

  List<String> showEmails() {
    List<String> emails = [];
    for (var users in usersList) {
      if (users.runtimeType == AdminUser) {
        emails.add(AdminUser(users.email).getMailSystem());
      } else if (users.runtimeType == GeneralUser) {
        emails.add(users.email);
      }
    }
    return emails;
  }
}
