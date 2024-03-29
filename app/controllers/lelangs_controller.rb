class LelangsController < ApplicationController
before_action :authenticate_user!
  before_action :set_lelang, only: %i[ show edit update destroy ]

  def index
    @lelangs = Lelang.all
    respond_to do |format|
      format.html
      format.json { render json: @lelangs }
      format.pdf do
        pdf = LelangsPdf.new(@lelangs)
        send_data pdf.render,
            filename: "Laporan Data Lelang.pdf"
        end
     end
  end

  def show
    @penawaran = current_user.penawarans.new
    @list_penawaran = Penawaran.where(lelang_id: @lelang.id)
    @penawaran_tertinggi = Penawaran.where(lelang_id: @lelang.id).order(tawaran: :desc).limit(1)
  end

  private

    def set_lelang
      @lelang = Lelang.find(params[:id])
    end

    def lelang_params
      params.require(:lelang).permit(:barang_id, :tanggal_lelang, :harga_akhir, :user_id, :petugas_id, :status)
    end

end
