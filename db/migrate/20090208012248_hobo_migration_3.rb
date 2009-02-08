class HoboMigration3 < ActiveRecord::Migration
  def self.up
    add_column :invoices, :user_id, :integer
    
    add_column :projects, :user_id, :integer
    
    add_column :sites, :user_id, :integer
    
    add_column :tickets, :user_id, :integer
  end

  def self.down
    remove_column :invoices, :user_id
    
    remove_column :projects, :user_id
    
    remove_column :sites, :user_id
    
    remove_column :tickets, :user_id
  end
end
