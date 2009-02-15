class Admin::ProjectsController < Admin::AdminSiteController

  hobo_model_controller Project

  auto_actions :index, :edit, :destroy, :update

end