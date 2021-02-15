ActiveAdmin.register Lelang do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :barang_id, :tanggal_lelang, :harga_akhir, :user_id, :petugas_id, :status
  #
  # or
  #
  # permit_params do
  #   permitted = [:barang_id, :tanggal_lelang, :harga_akhir, :user_id, :petugas_id, :status]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs do
      f.input :barang_id, :label => 'Barang', :as => :select, :collection => Barang.all.map{|u| ["#{u.nama_barang}", u.id]}
      f.input :user_id, :label => 'User', :as => :select, :collection => User.all.map{|u| ["#{u.email}", u.id]}
      f.input :tanggal_lelang
      f.input :harga_akhir
      f.input :status, label: 'Status Lelang'
      # f.input "Status Barang" do |lelang|
      #       lelang.status
      #     end
    end
    f.actions
  end

  show do
   attributes_table do
      row :barang_id
      row :tanggal_lelang
      row :harga_akhir
      row :user_id
      row :petugas_id
      row "Status lelang" do |lelang|
        lelang.status
      end
    end
  end

end
