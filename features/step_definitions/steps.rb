Given(/^I have deposited \$(\d+) in my account$/) do |amount|
  my_account = Account.new
  my_account.deposit(amount.to_i)
  expect(my_account.balance).to eq(amount.to_i),
    "Expected the balance to be #{amount} but it was #{my_account.balance}"
end

When(/^I request \$(\d+)$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^\$(\d+) should be dispensed$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

class Account
  def deposit(amount)
  end

  def balance
  end
end
