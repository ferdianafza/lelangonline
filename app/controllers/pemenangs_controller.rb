class PemenangsController < ApplicationController

  def index
    @pemenangs = Pemenang.all
    respond_to do |format|
      format.html
      format.json { render json: @pemenangs }
      format.pdf do
        pdf = PemenangsPdf.new(@pemenangs)
        send_data pdf.render,
            filename: "Laporan Pemenang Lelang.pdf"
        end
     end
  end

  private

    def pemenang_params
      params.require(:pemenang).permit(:lelang_id, :user_id, :harga)
    end

    def set_pemenang
      @pemenang = Pemenang.find(params[:id])
    end

end
