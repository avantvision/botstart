class Admin::TicketsController < Admin::AdminSiteController

  hobo_model_controller Ticket

  auto_actions :index, :edit, :destroy, :update

end