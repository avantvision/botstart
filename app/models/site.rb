class Site < ActiveRecord::Base

  hobo_model # Don't put anything above this
 
  belongs_to :user, :dependent => :destroy, :creator => true
  fields do
    name    :string
    ip :string
    status  enum_string(:active, :disabled)
    timestamps
  end


  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator? || acting_user.signed_up? 
  end

  def update_permitted?
    !user_changed?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
   user == acting_user || acting_user.administrator?
  end

end
