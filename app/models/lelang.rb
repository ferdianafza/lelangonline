class Lelang < ApplicationRecord
  paginates_per 8
  belongs_to :barang
  has_one :pemenang , dependent: :destroy
  has_many :penawarans, dependent: :destroy

  # include CanCan::Ability

  # def initialize(user)
  #   user ||= AdminUser.new

  #   if user.role == 'petugas'
  #     can :manage, :all
  #   else
  #     can :read, Lelang
  #   end
  # end

  def replace_in_string(str, replace, start, finish)
    str[start..finish] = replace * (finish + 1 - start)
    str
  end

end
