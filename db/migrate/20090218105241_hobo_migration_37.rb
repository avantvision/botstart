class HoboMigration37 < ActiveRecord::Migration
  def self.up
    rename_table :projectattachments, :attachments
  end

  def self.down
    rename_table :attachments, :projectattachments
  end
end
