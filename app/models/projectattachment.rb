class Projectattachment < ActiveRecord::Base

  hobo_model # Don't put anything above this
  belongs_to :user, :creator => true
  belongs_to :project

  fields do
    timestamps
  end
  
   # --- Project Attachments: pattachment = @pattachment --- #
  has_attached_file :pattachment
  validates_attachment_presence :pattachment
 

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
