class Admin::SitesController < Admin::AdminSiteController

  hobo_model_controller Site

  auto_actions :all

end