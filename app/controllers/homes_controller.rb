class HomesController < ApplicationController
before_action :authenticate_user!
    def index
      @list_lelang = Lelang.where(status: true).order(tanggal_lelang: :desc).page params[:page]
      @list_sold_lelang = Lelang.where(status: false).order(tanggal_lelang: :desc).page params[:page]
    end
end
