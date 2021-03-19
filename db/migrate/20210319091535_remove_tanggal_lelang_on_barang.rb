class RemoveTanggalLelangOnBarang < ActiveRecord::Migration[6.0]
  def change
    remove_column :barangs, :tanggal
  end
end
