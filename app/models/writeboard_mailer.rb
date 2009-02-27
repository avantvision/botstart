class WriteboardMailer < ActionMailer::Base
  
  def send_writeboard(body, user)
    host = Hobo::Controller.request_host
    app_name = Hobo::Controller.app_name || host
    @subject    = "#{app_name} -- New Writeboard"
    @body       = { :user => user, :body => body }
    @recipients = user.email_address
    @from       = "no-reply@#{host}"
    @sent_on    = Time.now
    @headers    = {}
  end
  
end
