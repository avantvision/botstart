class TicketsController < ApplicationController

  hobo_model_controller
  auto_actions :all
  auto_actions_for :user, [:index, :create, :new]

end
