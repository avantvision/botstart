class HoboMigration38 < ActiveRecord::Migration
  def self.up
    rename_table :attachments, :projectattachments
  end

  def self.down
    rename_table :projectattachments, :attachments
  end
end
