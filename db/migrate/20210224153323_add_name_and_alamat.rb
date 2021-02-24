class AddNameAndAlamat < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nama_depan, :string
    add_column :users, :nama_belakang, :string
    add_column :users, :alamat, :string
  end
end
