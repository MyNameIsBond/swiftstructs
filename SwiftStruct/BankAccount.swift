
import SwiftUI

struct Account {
  let accountNumber: Int
  let balance: Int
  
  mutating func deposit(_ amount: Int) -> Int {
    return balance + amount
  }
  
  mutating func withdraw(_ amount: Int) -> Int {
    let newAmount = balance - amount
    
    if newAmount < 0 {
      return balance
    }
    return newAmount
  }
}

struct BankAccount: View {
  @State var myAccount: Account = Account(accountNumber: 01111123343, balance: 100)
  var body: some View {
    Text("Bank Account")
    Button("Deposit") {
      var newDeposit = myAccount.deposit(100)
      print("My new deposit:", newDeposit)
    }
    Button("Withdraw"){
      var newWithdraw = myAccount.withdraw(100)
      print("My new withdraw:", newWithdraw)
    }
  }
}

struct BankAccount_Previews: PreviewProvider {
  static var previews: some View {
    BankAccount()
  }
}
