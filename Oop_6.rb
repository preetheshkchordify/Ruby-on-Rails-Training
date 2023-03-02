#Suppose you are designing a class called "BankAccount" in Ruby that has the
#following attributes and behaviors:Attributes:•balance
#(float)•account_number (string)Behaviors:•deposit(amount) -adds the amount
#to the balance•withdraw(amount) -subtracts the amount from the
#balance•display_balance -prints the current balance•account_info -prints the
#account number and current balanceYou want to make sure that the balance and
#account number are only accessible within the class, and that the deposit
#and withdraw methods can only be called by objects of the class.



class Bank
  def initialize(bal,accno)
    @balance, @accountno = bal,accno
  end
  def deposit(amount)
    @balance+=amount
  end
  def withdraw(amount)
    @balance-=amount
  end
  private
  def display_Balance
    puts "Balance is #{@balance}"
  end
  private
  def account_Info
    puts "Account number : #{@accountno} \n Balance : #{@balance}"
  end
end

bank=Bank.new(3000.0,"HDFC202332123")
bank.deposit(2000.0)
bank.withdraw(500.0)
