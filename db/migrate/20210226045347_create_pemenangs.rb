class CreatePemenangs < ActiveRecord::Migration[6.0]
  def change
    create_table :pemenangs do |t|
      t.string :lelang_id
      t.string :user_id
      t.string :harga

      t.timestamps
    end
  end
end
