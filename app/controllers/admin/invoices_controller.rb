class Admin::InvoicesController < Admin::AdminSiteController

  hobo_model_controller Invoice

  auto_actions :all

end