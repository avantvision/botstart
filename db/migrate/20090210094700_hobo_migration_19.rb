class HoboMigration19 < ActiveRecord::Migration
  def self.up
    add_column :projects, :status, :string
  end

  def self.down
    remove_column :projects, :status
  end
end
