class User < ActiveRecord::Base

  hobo_user_model # Don't put anything above this
  
  
  has_many :tickets, :dependent => :destroy, :foreign_key => "user_id"
  has_many :projects, :dependent => :destroy, :foreign_key => "user_id"
  has_many :sites, :dependent => :destroy, :foreign_key => "user_id"
  has_many :invoices, :dependent => :destroy, :foreign_key => "user_id"
  has_many :replies, :source => :tickets, :foreign_key => "user_id"
  has_many :tasks, :source => :projects, :foreign_key => "user_id"
  has_many :writeboards, :source => :projects, :foreign_key => "user_id"
  has_many :projectattachments, :source => :projects, :foreign_key => "user_id"
  

  fields do
    name :string, :unique
    email_address :email_address, :unique, :login => true
    administrator :boolean, :default => false
    timestamps
  end

  # This gives admin rights to the first sign-up.
  # Just remove it if you don't want that
  before_create { |user| user.administrator = true if count == 0 }
  
  
  # --- Signup lifecycle --- #

  lifecycle do

    state :active, :default => true

    create :signup, :available_to => "Guest",
           :params => [:name, :email_address, :password, :password_confirmation],
           :become => :active

    transition :request_password_reset, { :active => :active }, :new_key => true do
      UserMailer.deliver_forgot_password(self, lifecycle.key)
    end

    transition :reset_password, { :active => :active }, :available_to => :key_holder,
               :update => [ :password, :password_confirmation ]

  end
  

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator? || (acting_user == self && only_changed?(:crypted_password, :email_address))
    # Note: crypted_password has attr_protected so although it is permitted to change, it cannot be changed
    # directly from a form submission.
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
