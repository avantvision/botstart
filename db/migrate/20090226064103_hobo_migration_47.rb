class HoboMigration47 < ActiveRecord::Migration
  def self.up
    add_column :writeboards, :user_id, :integer
    add_column :writeboards, :project_id, :integer
    add_column :writeboards, :position, :integer
  end

  def self.down
    remove_column :writeboards, :user_id
    remove_column :writeboards, :project_id
    remove_column :writeboards, :position
  end
end
