# WEEK 1 TASK iOS

## PROBLEM DESCRIPTION:
The task is to model a traditional BANK having a Bank account, Bank employee, a Bank customer object using OOP. 
1. Bank Account : A financial account maintained by the bank. For our implementation;  We would be limiting bank account type to 
Savings Account 
Current Account 

2. Bank Customer: An individual that has owns an account with the bank.

## Steps to implement
#### 1. Bank Account :
Create a class Account with property: 
  - id(Int)
  - customerid(Int)
  - accountBalance in kobo(Int)
  - interestRate(Double) 

The Account class should have the following methods:
- withdrawal:  A method that takes amount as parameters; performs  reduction on the account  and returns the new account balance.
- deposit : A method that takes amount as parameters; performs  increment on the account balance  and returns the new account balance.
- charge: A method that reduces the account balance by 100naira and returns the new account balance.
- bonus: A method that increases the account balance by 10naira and returns the new account balance.

#### 2. Savings Account:
Create a class SavingsAccount that inherit Account class and does the following:
- Override the interest rate property and set it to 10percent.
- Override the deposit method from account class; the method would call the bonus method after every deposit.

#### 3. Current Account:
Create a class CurrentAccount that inherit Account class and does the following:
- Override the interest rate property and set it to 5percent.
- Override the withdrawal method from account class; the method would call the charge method after every withdrawal.


#### 4. Bank Customer: 
Create a class named “Customer” with properties: 
   - id(Int), 
   - name(String), 
   - address(String), 
   - phoneNumber(String), 
   - an optional accounts([Account]?). 

The Customer class should have the following methods:
- accountBalance : A method that takes an account as parameter and returns the account balance.
- withdrawal:  A method that takes an account and amount as parameters; performs a reduction on the account  and returns the new account balance.
- deposit : A method that takes an account and amount as parameters; performs an increment on the account  and returns the new account balance.
- openAccount: A method that takes account type enum as parameter; creates the type of account; appends the new account to the accounts property and returns the accounts property.
- closeAccount: A method that takes in an account as parameter; removes the new account from the accounts property and returns the accounts property.
- Create a getter and setter for all properties in the customer class.

#### 5. Account type 
Create an Enum with case savings and current

## Steps to evaluate 

1. Successfully Created a Customer object  
2. Successfully Created a savings account object for customer 

3. Successfully Created a current account object for customer  

4. Perform all methods on customer object and confirm if the returned result is the expected result. 

5. Point out where you applied the pillars of OOP. 

## Note: 

1. Please make use of XCode playground to complete task. 

2. All types that refer to money (amount, account balance) in the task should be an integer and should represent Nigerian kobo. If you want to represent 100 naira it should be 10000 kobo. 

3. Endeavour to convert back to naira when printing result. 
