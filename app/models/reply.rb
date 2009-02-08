class Reply < ActiveRecord::Base

  hobo_model # Don't put anything above this
  belongs_to :user, :dependent => :destroy, :creator => true
  belongs_to :ticket, :dependent => :destroy
  fields do
    description :text
    timestamps
  end


  # --- Permissions --- #

  def create_permitted?
    user_is?(acting_user)
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
