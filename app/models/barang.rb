class Barang < ApplicationRecord
  has_one_attached :foto
  has_one :lelang
end
