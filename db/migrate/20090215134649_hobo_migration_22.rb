class HoboMigration22 < ActiveRecord::Migration
  def self.up
    add_column :tickets, :date, :datetime
  end

  def self.down
    remove_column :tickets, :date
  end
end
