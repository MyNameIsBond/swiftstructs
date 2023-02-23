
import SwiftUI

struct Account {
  let accountNumber: Int
  var balance: Int
  
  mutating func deposit(_ amount: Int) -> Int {
    self.balance += amount
    
    return self.balance
  }
  
  mutating func withdraw(_ amount: Int) -> Int {
    
    guard (self.balance - amount) >= 0  else {
      return self.balance
    }
    
    self.balance = self.balance - amount
    return self.balance
  }
}

struct BankAccount: View {
  @State var myAccount: Account = Account(accountNumber: 01111123343, balance: 100)
  var body: some View {
    Text("Bank Account")
    Button("Deposit") {
      let newDeposit = myAccount.deposit(100)
      print("My new deposit:", newDeposit)
    }
    Button("Withdraw"){
      let newWithdraw = myAccount.withdraw(100)
      print("My new withdraw:", newWithdraw)
      print("main state \(myAccount)")
    }
  }
}

struct BankAccount_Previews: PreviewProvider {
  static var previews: some View {
    BankAccount()
  }
}
