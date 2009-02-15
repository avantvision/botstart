class Admin::TicketsController < Admin::AdminSiteController

  hobo_model_controller Ticket

  auto_actions :all
   auto_actions_for :user, [:create, :new]

end