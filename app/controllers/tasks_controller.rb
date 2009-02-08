class TasksController < ApplicationController

  hobo_model_controller
  auto_actions :all
  auto_actions_for :user, [:index, :create, :new]
  auto_actions_for :project, [:create, :index, :new]



end
