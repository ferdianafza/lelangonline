json.extract! barang, :id, :nama_barang, :tanggal, :harga_awal, :deskripsi_barang, :created_at, :updated_at
json.url barang_url(barang, format: :json)
