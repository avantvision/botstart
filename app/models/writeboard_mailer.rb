class WriteboardMailer < ActionMailer::Base
  

  def send_writeboard(writeboard)
  host = "bot.avantvision.net"
  app_name = Hobo::Controller.app_name || host
  
  @subject    = "#{app_name} -- writeboard"
 
   body   :controller => :writeboard, :action => :body
   recipients "@email_adress"
   @from       = "no-reply@#{host}"
   @sent_on    = Time.now
    @headers    = {}
    
   
  end

end
