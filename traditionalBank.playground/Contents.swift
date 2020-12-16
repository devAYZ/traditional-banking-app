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

// Mark: create the CurrentAccount subclass inheriting from Account class
class CurrentAccount: Account{
    
    // override the interest property, set to 5%
    override var interestRate: Double{
        set{}
        get{
            let fivePercent = 0.05
            return fivePercent
        }
    }
    // override the withdrawal method, call charge method after each withdrawal
    override func withdrawal(amount: Int) -> Int{
        accountBalance -= toKobo(amount)
        return charge()
    }
}

// Mark: create Bank Customer class
class Customer{
    
    // create Customer properties, (5 properties)
    var id: Int
    var name: String
    var address: String
    var phoneNumber: String
    var optionalAccounts: [Account]?
    
    // initialize Customer properties (5 properties initialization)
    init(id: Int, name: String, address: String, phoneNumber: String, optionalAccounts: [Account]?){
        self.id = id
        self.name = name
        self.address = address
        self.phoneNumber = phoneNumber
        self.optionalAccounts = optionalAccounts
    }

    // create Customers method (5 method)
    // show the account balance
    func accountBalance(account: Account) -> Int{
        toNaira(account.accountBalance)
    }
    // remove withdrawal amount from balance
    func withdrawal(account: Account, amount: Int) -> Int{
        account.accountBalance -= toKobo(amount)
        return toNaira(account.accountBalance)
    }
    // add deposit amount to balance
    func deposit(account: Account, amount: Int) -> Int{
        account.accountBalance += toKobo(amount)
        return toNaira(account.accountBalance)
    }
    // open account for either saving ot current
    func openAccount(openType: AccountType) -> [Account]?{
        // check if open type is savings, then open. Or check if type is Current, then open
        if openType == AccountType.savings {
            let newSavings = SavingsAccount(id: 1, customerId: 1, accountBalance: 20000, interestRate: 5.0)
            optionalAccounts?.append(newSavings)
        } else if openType == AccountType.current{
            let newCurrent = CurrentAccount(id: 1, customerId: 1, accountBalance: 30000, interestRate: 5.0)
            optionalAccounts?.append(newCurrent)
        }
        return optionalAccounts
    }
    func closeAccount(account: Account) -> [Account]?{
        optionalAccounts?.removeLast()
        return optionalAccounts
    }
}

// Mark: create enum (with two (2) cases
enum AccountType{
    case savings
    case current
}

// Mark: Steps to Evaluate---------------------------------------------

// 1. Successfully Created a Customer object
var customerObjectTest1 = Customer(id: 1, name: "Ayokunle", address: "Iyanapaja", phoneNumber: "07034641582", optionalAccounts: [])
var customerObjectTest2 = Customer(id: 2, name: "Waheed", address: "Island", phoneNumber: "+2348154095994", optionalAccounts: [])
