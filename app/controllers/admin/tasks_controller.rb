class Admin::TasksController < Admin::AdminSiteController

  hobo_model_controller Task

  auto_actions :index, :edit, :destroy, :update

end