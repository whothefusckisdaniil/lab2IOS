class BankAccount 
{
    var accountNumber: String
    var accountOwner: String
    var balance: Double

    init(accountNumber: String, accountOwner: String, startingBalance: Double) 
    {
        self.accountNumber = accountNumber
        self.accountOwner = accountOwner
        self.balance = startingBalance
    }

    func deposit(amount: Double) 
    {
        if amount > 0 
        {
            balance += amount
            print("Deposit successful. New balance: \(balance)")
        } 
        else 
        {
            print("Invalid deposit amount.")
        }
    }

    func withdraw(amount: Double) 
    {
        if amount > 0 && balance >= amount 
        {
            balance -= amount
            print("Withdrawal successful. New balance: \(balance)")
        } 
        else 
        {
            print("Invalid withdrawal amount or insufficient funds.")
        }
    }

    func getBalance() -> Double 
    {
        return balance
    }

    func displayAccountInfo() 
    {
        print("Account Information:")
        print("Account Number: \(accountNumber)")
        print("Account Owner: \(accountOwner)")
        print("Current Balance: \(balance)")
    }
}

let myAccount = BankAccount(accountNumber: "000001", accountOwner: "Daniil Reznikov", startingBalance: 1109.1)
myAccount.displayAccountInfo()
myAccount.deposit(amount: 888.7)
myAccount.withdraw(amount: 246.2)
myAccount.displayAccountInfo()