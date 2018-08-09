class Transfer

attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver 
    @status = "pending"
    @amount = amount
    end
    
  def valid?
    sender.valid? == true && receiver.valid? == true
  end
    
   def execute_transaction 
     if self.valid? == true && sender.balance > receiver.balance 
       
   end
    
end
