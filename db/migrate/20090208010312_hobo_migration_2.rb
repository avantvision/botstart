class HoboMigration2 < ActiveRecord::Migration
  def self.up
    add_column :replies, :ticket_id, :integer
    
    add_column :tasks, :project_id, :integer
  end

  def self.down
    remove_column :replies, :ticket_id
    
    remove_column :tasks, :project_id
  end
end
