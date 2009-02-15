class Admin::ProjectsController < Admin::AdminSiteController

  hobo_model_controller Project

  auto_actions :show, :index, :update
  auto_actions_for :user, [:create, :new, :index]

end