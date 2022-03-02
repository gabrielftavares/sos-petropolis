class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :campaigns, dependent: :destroy
  has_many :donations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
