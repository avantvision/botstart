class UsersController < ApplicationController

  hobo_user_controller
skip_before_filter :login_required
  auto_actions :all, :except => [ :index, :new, :create ]

end
