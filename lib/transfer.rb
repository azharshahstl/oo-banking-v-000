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
    
   
       
       
  
    
end
