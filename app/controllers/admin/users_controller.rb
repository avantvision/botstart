class Admin::UsersController < Admin::AdminSiteController

  hobo_model_controller User

  auto_actions :index, :edit, :destroy, :update

end