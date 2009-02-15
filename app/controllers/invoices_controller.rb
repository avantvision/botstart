class InvoicesController < ApplicationController

  hobo_model_controller
  auto_actions :show, :edit, :update, :destroy, :index  
  

end
