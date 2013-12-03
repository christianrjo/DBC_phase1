class BankAccount

  attr_accessor :customer_name, :account_type
  attr_writer :private_account_number

  def initialize(customer_name, account_type, account_number)
    @customer_name = customer_name
    @account_type = account_type
    @private_account_number = account_number
  end

  def to_s
    puts "My account information is #{customer_name}: #{account_type} # #{public_account_number}"
  end
  
  def public_account_number
    @private_account_number.gsub(/\d{3}-\d{3}-(\d{3})/, '***-***-\1')
  end


end

#driver code
my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239")
my_acct.to_s #=> "My account information is Junipero Serra: Checking# *****3239"

# p my_acct.customer_name
# p my_acct.account_type
# p my_acct.public_account_number
