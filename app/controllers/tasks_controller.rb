class TasksController < ApplicationController

  hobo_model_controller
  auto_actions :edit, :update, :destroy , :reorder, :feed
  auto_actions_for :user, [:create, :new]
  auto_actions_for :project, [:create, :index, :new]

  def feed
     @tasks = Task.find(:all, :limit => 10, :order => "position")
   end
end
