void main() {
  BankAccount customer1 = BankAccount("Mohammed", 600000.5654);
  customer1.getDetails();
  customer1.withdraw(5000.252);
  customer1.deposit(28000.225);
}

class BankAccount {
  String accountHolder;
  double balance;

  BankAccount(this.accountHolder, this.balance);

  deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposited: \$${amount}");
    } else {
      print("Deposit amount must be positive.");
    }
  }

  void withdraw(double amount) {
    if (amount > 0) {
      if (balance >= amount) {
        balance -= amount;
        print("Withdrew: \$${amount.toStringAsFixed(2)}");
      } else {
        print("Insufficient funds.");
      }
    } else {
      print("Withdrawal amount must be positive.");
    }
  }

  getDetails() {
    print("Account Holder: $accountHolder");
    print("Balance: \$${balance}");
  }
}
