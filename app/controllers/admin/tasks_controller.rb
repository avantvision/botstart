class Admin::TasksController < Admin::AdminSiteController

  hobo_model_controller Task

  auto_actions :all

end