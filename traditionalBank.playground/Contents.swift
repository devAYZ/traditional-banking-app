import UIKit
/*
 The task is to model a Traditional BANK having a Bank account, Bank employee, a Bank customer object using OOP.

 Bank Account : A financial account maintained by the bank. For our implementation;
 We would be limiting bank account type to Savings Account Current Account

 Bank Customer: An individual that has owns an account with the bank.
 */

// Public functions are available in the converting.swift

// Mark: create Account class
class Account{
    
    // declear the properties for Account class
    var id: Int
    var customerId: Int
    var accountBalance: Int
    var interestRate: Double
    
    // initialize Account  properties (with account balance in koko)
    init(id: Int, customerId: Int, accountBalance: Int, interestRate: Double){
        self.id = id; self.customerId = customerId; self.accountBalance = accountBalance; self.interestRate = interestRate
    }

    //create four (4) method for Account class
    // remove withdrawal for balance
    func withdrawal(amount: Int) -> Int{
        accountBalance -= toKobo(amount)
        return toNaira(accountBalance)
    }
    // add deposit to balance
    func deposit(amount: Int) -> Int{
        accountBalance += toKobo(amount)
        return toNaira(accountBalance)
    }
    // remove 100naira as charge
    func charge() -> Int{
        let charge = 100
        accountBalance -= toKobo(charge)
        return toNaira(accountBalance)
    }
    // add 10naira as bonus
    func bonus() -> Int{
        let bonus = 10
        accountBalance += toKobo(bonus)
        return toNaira(accountBalance)
    }
}

// Mark: create the SavingsAccount subclass inheriting from Account class
class SavingsAccount: Account{
    
    // override the interest property, set to 10%
    override var interestRate: Double{
        set{}
        get{
            let tenPercent = 0.1
            return tenPercent
        }
    }
    // override the deposit method, call bonus method after each deposit
    override func deposit(amount: Int) -> Int{
        accountBalance += toKobo(amount)
        return bonus()
    }
}
