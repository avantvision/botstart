class TasksController < ApplicationController

  hobo_model_controller
  auto_actions :edit, :update, :destroy , :reorder
  auto_actions_for :user, [:create, :new]
  auto_actions_for :project, [:create, :index, :new]



end
