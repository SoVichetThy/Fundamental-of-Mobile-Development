class Bank {
  String bank_name;
  String branch;
  String address;
  double bank_amount = 0;
  List<BankAcc> listBank = [];
  Bank({
    required this.bank_name,
    required this.branch,
    required this.address,
  });

  BankAcc create_acc(int acc_id, String acc_owner) {
    BankAcc temp_acc = BankAcc(acc_id: acc_id, acc_owner: acc_owner);
    if(checkID(temp_acc)){
    listBank.add(temp_acc);
    }
    else{
      throw Exception("ERROR-168 -- TryAgain! Your ID is duplicate -- Please Check Your ID Again -- Thank you");
    }
    return temp_acc;
  }

  bool checkID(BankAcc temp_acc) {
    bool isValid = true;
    for (int i = 0; i < listBank.length; i++) {
      temp_acc.acc_id == listBank[i].acc_id;
      if (temp_acc.acc_id == listBank[i].acc_id) {
        isValid = false;
      }
       else {
        isValid = true;
      }
    }
    return isValid;
  }
  @override
  String toString()
  {
    return 'Bank $bank_name \nBranch $branch \nAmount in Bank: $bank_amount\n-------------------------------';
  }
}

class BankAcc {
  String acc_owner;
  int acc_id;
  //double balance = 0;
  double _current_balance = 0; //_privatee

  BankAcc({
    required this.acc_id,
    required this.acc_owner,
  });
  double get check_balance => _current_balance;
  void credit(double balance) {
    _current_balance = balance.abs() + _current_balance ; //absolute abs: preven negative input.
  }
  void with_draw(double balance) {
    if(_current_balance < balance.abs()){
      throw Exception("EROR-169 -- Not Enough Balance!!! -- Please Check Your Balance -- Thank You");
    }
    _current_balance = _current_balance - balance.abs();
  }
  
  @override
  String toString()
  {
    return 'Account Owner: Mr/Mrs $acc_owner \n$acc_owner\'s ID: $acc_id \n$acc_owner\'s Amount: $check_balance\n-------------------------------';
  }
  
}

void main() {
  Bank bank = Bank(
      bank_name: 'ABC', branch: 'PhomnPenh', address: 'tonlebaSak, jomkaMorn');
print(bank);
BankAcc bankAcc1 = bank.create_acc(1, 'Sovichet');
bankAcc1.credit(500);

print(bankAcc1);
print(bank);
//TESTING
// print('\n'+bankacc.bank_name);
// print(bankacc.branch);
// print(bankacc.address+'\n');
// print(bank.create_acc(1, 'Vichet').acc_id);
// BankAcc bankAcc2 = bank.create_acc(2, 'Sovichet');
// print(bankAcc2.acc_id);
// print(bankAcc1.balance);

// bankAcc1.credit(-10);
// print(bankAcc1.balance);
 
//  bankAcc1.with_draw(10);
//  print(bankAcc1.balance);

// print(bank.create_acc(1, 'Vichet').acc_id);
}
