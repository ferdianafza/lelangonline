require 'prawn'
require 'open-uri'
class PemenangsPdf < Prawn::Document
  def initialize(pemenangs)
    super()
    @pemenangs = pemenangs
    text "Laporan Hasil Lelang "
    data_pemenang_lelang
    images
  end

  def data_pemenang_lelang
    table data_pemenang_lelang_rows do
      row(0).font_style = :bold
      # columns(1..2).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def data_pemenang_lelang_rows
    text "Data Pemenang Lelang"
    [["Foto","Tanggal","Lelang","Harga awal","Harga akhir", "User"]] +
    @pemenangs.map do |report|
      [{:image => URI.open(report.lelang.barang.foto.service_url), :fit => [100, 100]},
      report.created_at.to_s,report.lelang.barang.nama_barang,
        ActionController::Base.helpers.number_to_currency( report.lelang.barang.harga_awal,
                                                          :unit => "IDR ",
                                                          :separator => ",",
                                                          :delimiter => "."),
        ActionController::Base.helpers.number_to_currency( report.harga,
                                                          :unit => "IDR ",
                                                          :separator => ",",
                                                           :delimiter => "."),
        User.find(report.user_id).nama_depan + User.find(report.user_id).nama_belakang]

    end
  end

  def images
    # image open(@pemenangs.first.lelang.barang.foto.service_url)
  {:image => URI.open(@pemenangs.last.lelang.barang.foto.service_url)}
  end

end