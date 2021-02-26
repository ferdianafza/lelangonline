ActiveAdmin.register Lelang do
  menu label: "Lelang"

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
  scope :all, default: true
  scope("Active") { |scope| scope.where(status: true) }
  scope("Inactive") { |scope| scope.where(status: false) }
  filter :barang_nama_barang_cont, label: 'Cari Berdasarkan Nama Barang'
  filter :tanggal_lelang, filters: [:contains]


  form do |f|
    f.inputs do
      f.input :barang_id, :label => 'Barang', :as => :select, :collection => Barang.all.map{|u| ["#{u.nama_barang}", u.id]}
      # f.input :user_id, :label => 'User', :as => :select, :collection => User.all.map{|u| ["#{u.email}", u.id]}
      f.input :tanggal_lelang
      # f.input :harga_akhir
      f.input :status, label: 'Status Lelang'
      # f.input "Status Barang" do |lelang|
      #       lelang.status
      #     end
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column "Barang" do |l|
      barang = Barang.find(l.barang_id).nama_barang
      barang
    end
    column :status
    column :user_id
    actions
  end

  show do
   attributes_table do
      row "Barang" do |lelang|
        if lelang.barang.foto.attached?
          image_tag lelang.barang.foto
        end
      end

      row "Barang" do |lelang|
        lelang.barang.nama_barang
      end
      row "Harga Akhir" do |lelang|
        lelang.harga_akhir.to_s + " IDR "
      end
      row :tanggal_lelang
      row "Status lelang" do |lelang|
        lelang.status
      end
    end
  end

end
