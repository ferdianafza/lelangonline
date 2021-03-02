class LelangsPdf < Prawn::Document
  def initialize(lelangs)
    super()
    @lelangs = lelangs
    text "Laporan Data Lelang "
    data_lelang
  end

  def data_lelang
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
    text "Data Lelang"
    [["Tanggal","Nama Barang","Harga awal", "Status Lelang"]] +
    @lelangs.map do |report|
      [report.tanggal_lelang.to_s,report.barang.nama_barang,ActionController::Base.helpers.number_to_currency( report.barang.harga_awal, :unit => "IDR ", :separator => ",", :delimiter => "."),report.status.to_s]
    end
  end

end