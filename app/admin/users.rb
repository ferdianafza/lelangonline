ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :nama_depan, :nama_belakang, :alamat
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :nama_depan, :nama_belakang, :alamat]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

   index do
    selectable_column
    id_column
    column :email
    column :nama_depan
    column :nama_belakang
    column :alamat
    actions
  end


end
