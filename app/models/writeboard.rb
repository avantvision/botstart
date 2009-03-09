class Writeboard < ActiveRecord::Base

  hobo_model # Don't put anything above this
  belongs_to :user, :creator => true
  belongs_to :project
  acts_as_list :scope => :project
  fields do
    name :string
    body :textile
    timestamps
  end
  
  


  # --- Permissions --- #

  def create_permitted?
    user_is?(acting_user) || acting_user.administrator?
  end

  def update_permitted?
    !project_changed? && !user_changed?
  end

  def destroy_permitted?
    user == acting_user || acting_user.administrator?
  end

  def view_permitted?(field)
    user_is?(acting_user) || acting_user.administrator?
  end

end
