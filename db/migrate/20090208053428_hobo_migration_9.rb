class HoboMigration9 < ActiveRecord::Migration
  def self.up
    remove_column :tasks, :done
  end

  def self.down
    add_column :tasks, :done, :boolean
  end
end
