class HoboMigration7 < ActiveRecord::Migration
  def self.up
    rename_column :sites, :address, :ip
    
    remove_column :tickets, :status
  end

  def self.down
    rename_column :sites, :ip, :address
    
    add_column :tickets, :status, :string
  end
end
