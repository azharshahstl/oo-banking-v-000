class Transfer

attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver 
    @status = "pending"
    @amount = amount
    end
    
  def valid?
    self.sender.valid? == true && self.receiver.valid? == true
  end
    
   def execute_transaction 
     if self.valid? == true && self.sender.balance > self.receiver.balance && self.status != "complete"
       self.sender.balance = self.sender.balance - amount 
       self.receiver.balance = self.receiver.balance + amount 
       self.status = "complete"
     else return "Transaction rejected. Please check your account balance."
     end
   end
       
       
  
    
end
