  def down_payment(home_value, down_payment_percentage)
    home_value * down_payment_percentage
  end

puts down_payment(5000, 0.05)

  def monthly_payment(home_value, down_payment, apr, duration_in_years)
    (((home_value - down_payment) * (apr * (1 + apr)**(duration_in_years))) / (((1 + apr)**(duration_in_years)) - 1)) / 12
  end

puts monthly_payment(5000, 250, 0.05, 4)

  def total_interest_paid(home_value, down_payment, monthly_payment, duration_in_years)
    (monthly_payment * (duration_in_years * 12)) - (home_value - down_payment)
  end

puts total_interest_paid(5000, 250, 111.63, 4)
