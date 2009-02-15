class Admin::UsersController < Admin::AdminSiteController

  hobo_model_controller User

  auto_actions :all
  
  def search
     if params[:query]
       admin_search(params[:query])
     end
   end

end