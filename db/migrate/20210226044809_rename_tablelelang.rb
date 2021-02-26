class RenameTablelelang < ActiveRecord::Migration[6.0]
  def self.up
    rename_table :hasil_lelelangs, :hasil_lelangs
  end

  def self.down
    rename_table :hasil_lelangs, :hasil_lelelangs
  end
end
