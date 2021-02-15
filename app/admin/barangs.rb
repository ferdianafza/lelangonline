ActiveAdmin.register Barang do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :nama_barang, :tanggal, :harga_awal, :deskripsi_barang, :foto
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
      f.input :tanggal
      f.input :harga_awal
      f.input :deskripsi_barang, as: :quill_editor
    end
    f.actions
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
      row :tanggal
      row :harga_awal
      row (:deskripsi_barang) { |barang| raw(barang.deskripsi_barang) }
    end
  end

end
