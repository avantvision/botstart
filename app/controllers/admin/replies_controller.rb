class Admin::RepliesController < Admin::AdminSiteController

  hobo_model_controller Reply


auto_actions :show, :edit, :update, :destroy 
auto_actions_for :user, [:create, :new]
auto_actions_for :ticket, [:index, :create, :new]

end