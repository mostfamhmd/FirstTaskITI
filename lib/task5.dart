class InsufficientFundsException implements Exception {
  String errorMessage() {
    return 'Insufficient funds for this withdrawal.';
  }
}

class BankAccount {
  double _balance;

  BankAccount(this._balance);

  double get balance => _balance;

  void deposit(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Deposit amount must be greater than zero.');
    }
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Withdrawal amount must be greater than zero.');
    }
    if (amount > _balance) {
      throw InsufficientFundsException();
    }
    _balance -= amount;
  }
}
