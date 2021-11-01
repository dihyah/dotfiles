#BANKING

class Account
  attr_reader :name
  attr_reader :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  def display_balance(pin_number)
    puts pin_number == pin ? "#{@name.upcase}> Balance: $#{@balance}." : "Pin_error!"
  end

  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "#{@name.upcase}> Withdrew #{amount}. New Balance: #{@balance}."
    else
    puts pin_error
    end
  end

def deposit(pin_number, amount)
    if pin_number == pin
      @balance += amount
      puts "#{@name.upcase}> Deposit #{amount}. New Balance: #{@balance}."
    else
    puts pin_error
    end
  end

  private

  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end
end

class SavingsAccount < Account
  attr_reader :name
  attr_reader :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  def display_balance(pin_number)
    puts pin_number == pin ? "#{@name.upcase}> Balance: $#{@balance}." : "Pin_error!"
  end

  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "#{@name.upcase}> Withdrew #{amount}. New Balance: #{@balance}."
    else
    puts pin_error
    end
  end

def deposit(pin_number, amount)
    if pin_number == pin
      @balance += amount
      puts "#{@name.upcase}> Deposit #{amount}. New Balance: #{@balance}."
    else
    puts pin_error
    end
  end

  private

  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end
end

checking_account = Account.new("Elliot", 500)
checking_account.display_balance(1233)
checking_account.display_balance(1234)
checking_account.deposit(1234, 200)
checking_account.withdraw(1234, 200)
savings_account = SavingsAccount.new("Robot", 1000)
savings_account.display_balance(1234)