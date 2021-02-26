class HasilLelelangsController < InheritedResources::Base

  private

    def hasil_lelelang_params
      params.require(:hasil_lelelang).permit(:lelang_id, :user_id, :harga)
    end

end
