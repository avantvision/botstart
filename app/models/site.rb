class Site < ActiveRecord::Base

  hobo_model # Don't put anything above this
 
  belongs_to :user, :creator => true
  fields do
    name    :string
    url :string
    status  enum_string(:active, :disabled)
    timestamps
  end
   # --- Validation--- #
   validates_presence_of [:name, :url]

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
