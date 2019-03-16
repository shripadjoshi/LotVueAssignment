class User < ApplicationRecord
  has_and_belongs_to_many :roles
  has_one_attached :avatar, dependent: :destroy
  has_many :user_details, dependent: :destroy
  accepts_nested_attributes_for :user_details, allow_destroy: true
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
end
