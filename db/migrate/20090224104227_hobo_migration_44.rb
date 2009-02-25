class HoboMigration44 < ActiveRecord::Migration
  def self.up
    add_column :projectattachments, :position, :integer
  end

  def self.down
    remove_column :projectattachments, :position
  end
end
