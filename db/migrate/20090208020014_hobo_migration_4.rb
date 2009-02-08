class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :replies, :user_id, :integer
    
    add_column :tasks, :user_id, :integer
  end

  def self.down
    remove_column :replies, :user_id
    
    remove_column :tasks, :user_id
  end
end
