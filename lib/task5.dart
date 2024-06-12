class BankAccount {
  double _balance;

  BankAccount(this._balance);

  double get balance => _balance;

  void deposit(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Deposit amount must be positive.');
    }
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Withdrawal amount must be positive.');
    }
    if (amount > _balance) {
      throw InsufficientFundsException('Insufficient funds for withdrawal.');
    }
    _balance -= amount;
  }
}

class Customer {
  final BankAccount _account;

  Customer(double initialBalance) : _account = BankAccount(initialBalance);

  void performBankingOperations() {
    try {
      _account.deposit(500.0);
      _account.withdraw(800.0);
      print('Current balance: \$${_account.balance}');
    } on InsufficientFundsException catch (e) {
      print(e);
    }
  }
}

class InsufficientFundsException implements Exception {
  final String message;

  InsufficientFundsException(this.message);

  @override
  String toString() => 'InsufficientFundsException: $message';
}

void main() {
  final customer = Customer(1000.0);
  customer.performBankingOperations();
}
