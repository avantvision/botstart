class Invoice < ActiveRecord::Base

  hobo_model # Don't put anything above this
  belongs_to :user, :dependent => :destroy, :creator => true
  fields do
    title  :string
    amount :integer
    timestamps
  end


  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator? 
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    user == acting_user || acting_user.administrator?
  end

end
