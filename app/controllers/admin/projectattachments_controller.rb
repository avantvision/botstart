class Admin::ProjectattachmentsController < Admin::AdminSiteController

  hobo_model_controller Projectattachment

  auto_actions :all
  auto_actions_for :project, [:create, :new]

end