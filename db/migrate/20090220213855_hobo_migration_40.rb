class HoboMigration40 < ActiveRecord::Migration
  def self.up
    rename_column :sites, :ip, :url
  end

  def self.down
    rename_column :sites, :url, :ip
  end
end
