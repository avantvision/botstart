class HoboMigration8 < ActiveRecord::Migration
  def self.up
    add_column :tasks, :done, :boolean
  end

  def self.down
    remove_column :tasks, :done
  end
end
