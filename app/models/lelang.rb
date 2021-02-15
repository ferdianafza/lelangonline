class Lelang < ApplicationRecord
  paginates_per 5
  belongs_to :barang
end
