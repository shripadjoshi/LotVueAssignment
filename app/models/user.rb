class User < ApplicationRecord
  has_and_belongs_to_many :roles
  has_one_attached :avatar
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
end
