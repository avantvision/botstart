class WriteboardsController < ApplicationController

  hobo_model_controller
  
  auto_actions :show, :edit, :update, :destroy , :reorder
  auto_actions_for :user, [:create, :new]
  auto_actions_for :project, [:create, :index, :new]
  show_action :sendme
  
  def sendme
  
            
       UserMailer.deliver_send_writeboard(:user)
       
        # after sent show message
        flash[:notice] = "We've sent you this writeboard to your email"

        # render the default action
        redirect_to :writeboard
   end
  

  
end
