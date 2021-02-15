class LelangsController < InheritedResources::Base

  private

    def lelang_params
      params.require(:lelang).permit(:barang_id, :tanggal_lelang, :harga_akhir, :user_id, :petugas_id, :status)
    end

end
