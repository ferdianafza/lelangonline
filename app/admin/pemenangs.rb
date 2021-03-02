ActiveAdmin.register Pemenang do
  menu label: "Pemenang Lelang"

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :lelang_id, :user_id, :harga


  filter :user_nama_depan_or_user_nama_belakang_cont, label: 'Cari Berdasarkan Pemenang'
  filter :created_at
  filter :lelang_barang_nama_barang_cont, label: 'Cari Berdasarkan Nama Barang'


  index do
    selectable_column
    id_column
    column "Lelang" do |l|
      barang = l.lelang.barang.nama_barang
      barang
    end

    column "Pemenang" do |l|
      nama_depan = l.user.nama_depan
      nama_belakang = l.user.nama_belakang
      nama_depan + "  " + nama_belakang
    end
    column :harga
    actions
  end

  controller do
    def index
      index! do |format|
        format.html
        format.csv { send_data @pemenangs.to_csv }
        format.pdf do
          pdf = PemenangsPdf.new(@pemenangs)
          send_data pdf.render,
              filename: "Laporan Pemenang Lelang.pdf"
          end
      end
    end

    # def show
    #   show! do |format|
    #     format.pdf { render(pdf: "page-#{resource.id}.pdf") }
    #   end
    # end

  end

  def show
    attributes_table do
      row :lelang_id
      row :user_id
    end
  end

  #
  # or
  #
  # permit_params do
  #   permitted = [:lelang_id, :user_id, :harga]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
