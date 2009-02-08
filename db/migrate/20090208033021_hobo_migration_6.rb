class HoboMigration6 < ActiveRecord::Migration
  def self.up
    remove_column :replies, :user_id
    
    remove_column :tasks, :user_id
  end

  def self.down
    add_column :replies, :user_id, :integer
    
    add_column :tasks, :user_id, :integer
  end
end
