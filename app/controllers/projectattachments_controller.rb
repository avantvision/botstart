class ProjectattachmentsController < ApplicationController

  hobo_model_controller

  auto_actions :show, :edit, :update, :destroy 
  auto_actions_for :user, [:create, :new]
  auto_actions_for :project, [:create, :index, :new]


 
  
  
end
