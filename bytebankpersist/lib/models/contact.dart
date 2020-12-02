class Contact {
  int id;
  String fullName;
  int accountNumber;

  Contact(this.fullName, this.accountNumber, {this.id});

  @override
  String toString() {
    return 'Contact{id : $id, fullName: $fullName, accountNumber: $accountNumber}';
  }
}
