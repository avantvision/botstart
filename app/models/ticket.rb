class Ticket < ActiveRecord::Base

  hobo_model # Don't put anything above this
  
  belongs_to :user, :creator => true
  has_many :replies, :dependent => :destroy

  fields do
    name        :string
    description :text
    status enum_string(:new, :in_process, :closed)
    priority  enum_string(:high, :medium, :low)
    timestamps
  end
  
  # --- Validation--- #
  validates_presence_of [:name, :description]


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
