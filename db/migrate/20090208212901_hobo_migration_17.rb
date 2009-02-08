class HoboMigration17 < ActiveRecord::Migration
  def self.up
    remove_column :project_memberships, :project_id
    remove_column :project_memberships, :user_id
  end

  def self.down
    add_column :project_memberships, :project_id, :integer
    add_column :project_memberships, :user_id, :integer
  end
end
