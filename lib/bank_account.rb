class BankAccount
  attr_reader :name
  attr_accessor :balance, :status

  # initialize BankAccount w/ name, balance = 1000, status = "open"
  # utlizing attr_reader prevents ability to change name 
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(deposit_amount)
    self.balance += deposit_amount
  end

  def display_balance
    "Your balance is $#{balance}."
  end

  def close_account
    self.status = "closed"
  end

  def valid?
    balance > 0 && status == "open"
  end

end
