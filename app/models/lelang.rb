class Lelang < ApplicationRecord
  paginates_per 8
  belongs_to :barang
  has_one :pemenang
  has_many :penawarans
end
