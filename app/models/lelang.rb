class Lelang < ApplicationRecord
  paginates_per 8
  belongs_to :barang
  has_one :pemenang
  has_many :penawarans

  # include CanCan::Ability

  # def initialize(user)
  #   user ||= AdminUser.new

  #   if user.role == 'petugas'
  #     can :manage, :all
  #   else
  #     can :read, Lelang
  #   end
  # end

end
