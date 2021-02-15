class CreateLelangs < ActiveRecord::Migration[6.0]
  def change
    create_table :lelangs do |t|
      t.integer :barang_id
      t.date :tanggal_lelang
      t.integer :harga_akhir
      t.integer :user_id
      t.integer :petugas_id
      t.boolean :status

      t.timestamps
    end
  end
end
