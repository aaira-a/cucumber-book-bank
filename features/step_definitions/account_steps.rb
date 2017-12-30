Given(/^my account has been credited with \$(#{CAPTURE_CASH_AMOUNT})$/) do |amount|
  my_account.credit(amount)
end

Then(/^the balance of my account should be \$(\d+)$/) do |amount|
  eventually { expect(my_account.balance).to eq(amount) }
end
