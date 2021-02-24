class PenawaransController < InheritedResources::Base

  private

    def penawaran_params
      params.require(:penawaran).permit(:tawaran, :user_id, :lelang_id)
    end

end
