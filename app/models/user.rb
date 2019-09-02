class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets
  mount_uploader :avatar, AvatarUploader
  serialize :following, Array
  validates :username, presence: true
  validates :username, uniqueness: true
end
