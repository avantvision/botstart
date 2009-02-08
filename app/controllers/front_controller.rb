class FrontController < ApplicationController

  hobo_controller
  skip_before_filter :login_required

  def index; end

  def search
    if params[:query]
      site_search(params[:query])
    end
  end

end
