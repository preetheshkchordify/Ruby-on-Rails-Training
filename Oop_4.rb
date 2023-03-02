#4.Once upon a time, there was a programmer named Alice who was working on a
#new project in Ruby. She wanted to create a class to represent a bank
#account, with methods to deposit and withdraw money. She also wanted to
#initialize each account with a starting balance.

class Bank

  def initialize(bal)
    @balance = bal
  end

  def depositAcc(val)
    @balance+=val
  end

  def withdrawAcc(val)
    @balance-=val
  end

  def displayBalance
    puts "Current balance is #{@balance}"
  end
end

bank = Bank.new(3000)

bank.depositAcc(2000)
bank.withdrawAcc(1500)

bank.displayBalance