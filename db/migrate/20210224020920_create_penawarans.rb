class CreatePenawarans < ActiveRecord::Migration[6.0]
  def change
    create_table :penawarans do |t|
      t.integer :tawaran
      t.string :user_id
      t.string :lelang_id

      t.timestamps
    end
  end
end
