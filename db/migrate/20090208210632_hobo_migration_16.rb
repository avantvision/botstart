class HoboMigration16 < ActiveRecord::Migration
  def self.up
    add_column :project_memberships, :project_id, :integer
    add_column :project_memberships, :user_id, :integer
  end

  def self.down
    remove_column :project_memberships, :project_id
    remove_column :project_memberships, :user_id
  end
end
