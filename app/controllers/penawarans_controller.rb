class PenawaransController < ApplicationController


  def create
    @penawaran = current_user.penawarans.new(penawaran_params)
    @lelang_id = @penawaran.lelang_id
    penawaran_tertinggi = Penawaran.where(lelang_id: @lelang_id).maximum(:tawaran)
    if penawaran_tertinggi == nil
      penawaran_tertinggi = 0
    end
    if @penawaran.tawaran <= penawaran_tertinggi
      respond_to do |format|
        format.html { redirect_to "/lelangs/#{@lelang_id}", notice: 'Bid Harus Lebih Besar dari Penawaran Tertinggi saat ini.' }
       end
    elsif @penawaran.tawaran <= @penawaran.lelang.barang.harga_awal
      respond_to do |format|
        format.html { redirect_to "/lelangs/#{@lelang_id}", notice: 'Bid Harus Lebih Besar Harga Awal.' }
       end
    elsif Time.now.to_date != @penawaran.lelang.tanggal_lelang
      respond_to do |format|
        format.html { redirect_to "/lelangs/#{@lelang_id}", notice: 'Batas Waktu Bid sudah habis' }
      end
    else
      respond_to do |format|
        if @penawaran.save
          format.html { redirect_to "/lelangs/#{@penawaran.lelang_id}", notice: 'Anda Berhasil melakukan Bid.' }
          format.json { render :show, status: :created }
        else
          format.html { redirect_to homes_path, notice: 'Laporan Agenda Ramadhan gagal dibuat harap isi kolom Bukti Laporan .' }
          format.json { render json: @report_ramadhan.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  private

    def penawaran_params
      params.require(:penawaran).permit(:tawaran, :user_id, :lelang_id)
    end

end
