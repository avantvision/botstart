class Admin::InvoicesController < Admin::AdminSiteController

  hobo_model_controller Invoice

  auto_actions :index, :edit, :destroy, :update

end