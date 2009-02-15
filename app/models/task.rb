class Task < ActiveRecord::Base

  hobo_model # Don't put anything above this
  
  belongs_to :user, :creator => true
  belongs_to :project
  fields do
    name :string
    status enum_string(:new, :in_process, :completed)
    timestamps
  end


  # --- Permissions --- #

  def create_permitted?
    user_is?(acting_user)
  end

  def update_permitted?
    !project_changed? && !user_changed?
  end

  def destroy_permitted?
    user == acting_user || acting_user.administrator?
  end

  def view_permitted?(field)
    project.viewable_by?(acting_user)
  end

end
