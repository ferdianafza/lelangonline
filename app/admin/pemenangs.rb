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
  #
  # or
  #
  # permit_params do
  #   permitted = [:lelang_id, :user_id, :harga]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
