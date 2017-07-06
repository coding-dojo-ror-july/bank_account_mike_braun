#  BankAccount should have a method that returns a user's account number, account number should be generated by a private method, account number should be random
#  BankAccount should have a method that returns the user's checking account balance
#  BankAccount should have a method that returns the user's saving account balance
#  BankAccount should allow a user to deposit money into either their checking or saving account
#  BankAccount should allow a user to withdraw money from one of their accounts, return an error if there are insufficient funds
#  BankAccount should allow the user to view the total amount of money they have at the bank
#  BankAccount should track how many accounts the bank currently has
#  Add an interest_rate attribute that is not accessible by the user. Set it to 0.01
#  BankAccount should have a method called account_information that displays the users account number, total money, checking account balance, saving account balance and interest rate
#  A user should not be able to set any attributes from the BankAccount class

class BankAccount
    attr_accessor :checking, :savings, :account_number

    @@bank_accounts = 0

    def initialize
        @account_number = account_number
        @checking = 0
        @savings = 0
        @@bank_accounts +=1
        @view_all = view_all
        @interest_rate = 0.01
    end
    def checking_account
        puts @checking
    end
    def savings_account
        puts @savings
    end
    def deposit_money_savings (money)
        @savings += money
        puts @savings
    end
    def deposit_money_checking (money)
        @checking += money
    end
    def withdraw_money_checking (money)
        if @checking - money < 0
            puts "Insufficient Funds!"
        else    
            @checking -= money
        end
    end
    def withdraw_money_savings (money)
        if @savings - money < 0
            puts "Insufficient Funds!"
        else    
            @savings -= money
        end
    end
    def view_all
        @view_all = @checking + @savings
        puts @view_all
    end
    def account_information
        "Account Number: #{@account_number}\nInterestRate: #{@interest_rate}\n#{self.total}"
private
    def user_account
        # @account_number = Math.random (#some code here)
        puts @account_number
    end
end
user = BankAccount.new.savings_account()