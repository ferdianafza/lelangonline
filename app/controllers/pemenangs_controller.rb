class PemenangsController < InheritedResources::Base

  private

    def pemenang_params
      params.require(:pemenang).permit(:lelang_id, :user_id, :harga)
    end

end
