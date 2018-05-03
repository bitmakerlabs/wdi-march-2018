# Note: interest_rate must be as a percentage float i.e. 9.2 or 14.4
def total_amount_owing(principal, interest_rate, years)
  percentage_interest = interest_rate / 100
  principal * (1 + percentage_interest * years)
end
