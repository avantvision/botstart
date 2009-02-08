class HoboMigration5 < ActiveRecord::Migration
  def self.up
    add_column :tickets, :status, :string
    change_column :tickets, :description, :text, :limit => nil
  end

  def self.down
    remove_column :tickets, :status
    change_column :tickets, :description, :string
  end
end
