class HomesController < ApplicationController
before_action :authenticate_user!
    def index
      @list_lelang = Lelang.where(status: true).order(tanggal_lelang: :desc).page params[:page]
    end
end
