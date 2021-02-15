class CreateBarangs < ActiveRecord::Migration[6.0]
  def change
    create_table :barangs do |t|
      t.string :nama_barang
      t.date :tanggal
      t.integer :harga_awal
      t.string :deskripsi_barang

      t.timestamps
    end
  end
end
