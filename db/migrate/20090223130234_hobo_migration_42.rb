class HoboMigration42 < ActiveRecord::Migration
  def self.up
    rename_column :tasks, :status, :completed
    change_column :tasks, :completed, :boolean, :limit => nil
  end

  def self.down
    rename_column :tasks, :completed, :status
    change_column :tasks, :status, :string
  end
end
