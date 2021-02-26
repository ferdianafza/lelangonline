namespace :sample do
    desc 'saying hi to cron'
    task :test => [ :environment ] do
       lelang = Lelang.last
    penawaran_tertinggi = Penawaran.where(lelang_id: lelang.id).maximum(:tawaran)
    penawar_tertinggi = Penawaran.find_by(lelang_id: lelang.id).user
    puts "Lelang #{lelang.barang.nama_barang} terlelang di harga #{penawaran_tertinggi} oleh #{penawar_tertinggi.email}"
     lelang.harga_akhir = Penawaran.where(lelang_id: lelang.id).maximum(:tawaran)
     lelang.user_id = penawar_tertinggi.id
     lelang.status = false
     lelang.save!
    # puts "hai"

    p = Pemenang.new
    p.lelang_id = lelang.id
    p.user_id = penawar_tertinggi.id
    p.harga = penawaran_tertinggi
    p.save!
    # b = Barang.new
    # b.nama_barang = "Jam Imo 5"
    # b.harga_awal = 350000
    end
end