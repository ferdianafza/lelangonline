require 'prawn'
require 'open-uri'
class BarangsPdf < Prawn::Document
  def initialize(barangs)
    super()
    @barangs = barangs
    text "Laporan Data Barang "
    data_barang
    # images
  end

  def data_barang
    table data do
      row(0).font_style = :bold
      # columns(1..2).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end

    # move_down 20

    # table report_ramadhans_rows_fardhu do
    #   self.row_colors = ["DDDDDD", "FFFFFF"]
    #   self.header = true
    # end

    # move_down 20

    # table report_ramadhans_rows_sunah do
    #   self.row_colors = ["DDDDDD", "FFFFFF"]
    #   self.header = true
    # end
  end

  def data
    text "Data Barang"
    [["id","Nama Barang","Harga awal"]] +
    @barangs.map do |report|
      [report.id,report.nama_barang,ActionController::Base.helpers.number_to_currency( report.harga_awal, :unit => "IDR ", :separator => ",", :delimiter => ".")]
    end
  end

  # def images
  #   # image open(@pemenangs.first.lelang.barang.foto.service_url)
  # {:image => URI.open(@barangs.last.foto.service_url), :fit => [100, 200] }
  # end

end