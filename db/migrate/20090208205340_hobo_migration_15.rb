class HoboMigration15 < ActiveRecord::Migration
  def self.up
    create_table :project_memberships do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :project_memberships
  end
end
