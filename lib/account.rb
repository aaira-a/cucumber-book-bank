require_relative 'transaction_queue'
require_relative 'balance_store'

class Account
  def initialize
    @queue = TransactionQueue.new
    @balance_store = BalanceStore.new
  end

  def credit(amount)
    @queue.write("+#{amount}")
  end

  def balance
    @balance_store.balance
  end

  def debit(amount)
    @queue.write("-#{amount}")
  end
end
