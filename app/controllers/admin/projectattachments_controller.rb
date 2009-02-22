class Admin::ProjectattachmentsController < Admin::AdminSiteController

  hobo_model_controller Projectattachment

  auto_actions :all

end