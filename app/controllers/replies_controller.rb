class RepliesController < ApplicationController

  hobo_model_controller
  auto_actions :show, :edit, :update, :destroy 
  auto_actions_for :user, [:create, :new]
  auto_actions_for :ticket, [:index, :create, :new]


end
