class HoboMigration45 < ActiveRecord::Migration
  def self.up
    remove_column :projectattachments, :position
  end

  def self.down
    add_column :projectattachments, :position, :integer
  end
end
