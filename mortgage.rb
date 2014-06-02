class Mortgage


  #^ not sure what this is...
  #My first class
  def initialize (home_value, down_payment_percentage, apr, duration_in_years)
    @home_value = home_value
    @down_payment_percentage = down_payment_percentage
    @apr = apr
    @duration_in_years = duration_in_years
  end

  attr_reader :home_value, :down_payment_percentage, :apr, :duration_in_years

  # def home_value
  #   @home_value
  # end

  def down_payment
    home_value * down_payment_percentage
  end

  def monthly_payment
    (((home_value - down_payment) * (apr * (1 + apr)**(duration_in_years))) / (((1 + apr)**(duration_in_years)) - 1)) / 12
  end

  def total_interest_paid
    (monthly_payment * (duration_in_years * 12)) - (home_value - down_payment)
  end

end
