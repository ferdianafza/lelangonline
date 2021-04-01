class BarangsController < ApplicationController
  before_action :set_barang, only: %i[ show edit update destroy ]

  # GET /barangs or /barangs.json
  def index
    @barangs = Barang.all
    respond_to do |format|
      format.html
      format.json { render json: @pemenangs }
      format.pdf do
        pdf = BarangsPdf.new(@barangs)
        send_data pdf.render,
            filename: "Laporan Barang.pdf"
        end
     end
  end

  # GET /barangs/1 or /barangs/1.json
  def show
  end

  # GET /barangs/new
  def new
    @barang = Barang.new
  end

  # GET /barangs/1/edit
  def edit
  end

  # POST /barangs or /barangs.json
  def create
    @barang = Barang.new(barang_params)

    respond_to do |format|
      if @barang.save
        format.html { redirect_to @barang, notice: "Barang was successfully created." }
        format.json { render :show, status: :created, location: @barang }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @barang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barangs/1 or /barangs/1.json
  def update
    respond_to do |format|
      if @barang.update(barang_params)
        format.html { redirect_to @barang, notice: "Barang was successfully updated." }
        format.json { render :show, status: :ok, location: @barang }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @barang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barangs/1 or /barangs/1.json
  def destroy
    @barang.destroy
    respond_to do |format|
      format.html { redirect_to barangs_url, notice: "Barang was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barang
      @barang = Barang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def barang_params
      params.require(:barang).permit(:nama_barang, :tanggal, :harga_awal, :deskripsi_barang)
    end
end
