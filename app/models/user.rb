class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :penawarans
  has_many :pemenangs

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
