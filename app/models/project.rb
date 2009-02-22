class Project < ActiveRecord::Base

  hobo_model # Don't put anything above this
  

  belongs_to :user, :creator => true
  has_many :tasks, :dependent => :destroy
  has_many :projectattachments, :dependent => :destroy

  fields do
    name :string
    description :text
    status enum_string(:new, :working, :completed)
    timestamps
  end
  
  # --- Validation--- #
  validates_presence_of [:name, :description]


  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator? || user_is?(acting_user) 
  end

  def update_permitted?
   acting_user.administrator? || user_is?(acting_user) 
  end

  def destroy_permitted?
     user_is?(acting_user) || acting_user.administrator?
  end

  def view_permitted?(field)
    acting_user.administrator? || user_is?(acting_user)
  end

end
