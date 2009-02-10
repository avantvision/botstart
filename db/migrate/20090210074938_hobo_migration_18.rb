class HoboMigration18 < ActiveRecord::Migration
  def self.up
    rename_column :replies, :description, :name
  end

  def self.down
    rename_column :replies, :name, :description
  end
end
