class Ability
  include CanCan::Ability

  def initialize(user)
    # user ||= AdminUser.new

    if user.role == 'petugas'
      can :manage, :all
    else
      can :read, Lelang
      can :manage, Barang
      can :manage, Pemenang
      can :manage, User
      can :manage, AdminUser
      can :read, ActiveAdmin::Page, name: "Dashboard", namespace_name: "admin"
    end
  end
  # def initialize(user)
  #   can :read, Lelang
  # end


end