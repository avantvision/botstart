class Project < ActiveRecord::Base

  hobo_model # Don't put anything above this
  

  belongs_to :user, :dependent => :destroy, :creator => true
  has_many :tasks, :dependent => :destroy
  fields do
    name :string
    status enum_string(:new, :in_process, :completed)
    timestamps
  end


  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator? || user_is?(acting_user) 
  end

  def update_permitted?
    !user_changed?
  end

  def destroy_permitted?
     user_is?(acting_user) || acting_user.administrator?
  end

  def view_permitted?(field)
    acting_user.administrator? || user_is?(acting_user)
  end

end
