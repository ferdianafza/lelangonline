class DeleteTableHasilLelang < ActiveRecord::Migration[6.0]
  def change
    drop_table :hasil_lelangs
  end
end
