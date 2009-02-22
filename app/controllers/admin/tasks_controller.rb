class Admin::TasksController < Admin::AdminSiteController

  hobo_model_controller Task

  auto_actions :all
  auto_actions_for :project, [:create, :new]
end