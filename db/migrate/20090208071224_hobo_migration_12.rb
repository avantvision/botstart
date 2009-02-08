class HoboMigration12 < ActiveRecord::Migration
  def self.up
    rename_column :invoices, :owner_id, :user_id
    
    rename_column :projects, :owner_id, :user_id
    
    rename_column :sites, :owner_id, :user_id
    
    rename_column :tickets, :owner_id, :user_id
  end

  def self.down
    rename_column :invoices, :user_id, :owner_id
    
    rename_column :projects, :user_id, :owner_id
    
    rename_column :sites, :user_id, :owner_id
    
    rename_column :tickets, :user_id, :owner_id
  end
end
