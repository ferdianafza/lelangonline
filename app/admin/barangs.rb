ActiveAdmin.register Barang do
  menu label: "Barang"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :nama_barang, :harga_awal, :deskripsi_barang, :foto
  #
  # or
  #
  # permit_params do
  #   permitted = [:nama_barang, :tanggal, :harga_awal, :deskripsi_barang]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

   form do |f|
    f.inputs 'Barang' do
      f.input :foto, as: :file
      f.input :nama_barang
      f.input :harga_awal
      f.input :deskripsi_barang, as: :quill_editor
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :nama_barang
    column :harga_awal
    actions
  end



  controller do
    def index
      index! do |format|
        format.html
        format.csv { send_data @barangs.to_csv }
        format.pdf do
          pdf = BarangsPdf.new(@barangs)
          send_data pdf.render,
              filename: "Laporan Barang.pdf"
          end
      end
    end

    # def show
    #   show! do |format|
    #     format.pdf { render(pdf: "page-#{resource.id}.pdf") }
    #   end
    # end

  end

   show do
   attributes_table do
      # row :files do |av|
      #   image_tag av.files, width: "50%" if av.files.attached?
      # end

      row :foto do |ad|
        image_tag ad.foto, width: "50%"
      end
      row :nama_barang
      row :harga_awal
      row (:deskripsi_barang) { |barang| raw(barang.deskripsi_barang) }
    end
  end

end
