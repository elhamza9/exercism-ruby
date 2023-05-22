module SavingsAccount
  def self.interest_rate(balance)
    if balance >= 0 and balance < 1000
      return 0.5
    elsif balance >= 1000 and balance < 5000
      return 1.621
    elsif balance >= 5000
      return 2.475
    else
      return 3.213
    end
  end

  def self.annual_balance_update(balance)
    return balance + (balance*(self.interest_rate(balance)/100))
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    counter = 0
    new_balance = current_balance
    until new_balance >= desired_balance
      new_balance = self.annual_balance_update(new_balance)
      counter += 1
    end
    return counter
  end
end
