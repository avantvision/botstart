class ProjectMembership < ActiveRecord::Base

  hobo_model # Don't put anything above this


  fields do
    timestamps
  end


  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator? || acting_user == project.owner 
  end

  def update_permitted?
    acting_user.administrator? || acting_user == project.owner 
  end

  def destroy_permitted?
    acting_user.administrator? || acting_user == project.owner 
  end

  def view_permitted?(field)
    true
  end

end
