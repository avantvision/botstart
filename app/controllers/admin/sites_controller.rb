class Admin::SitesController < Admin::AdminSiteController

  hobo_model_controller Site

  auto_actions :index, :edit, :destroy, :update

end