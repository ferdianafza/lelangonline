class Lelang < ApplicationRecord
  paginates_per 8
  belongs_to :barang
  has_many :penawarans
end
