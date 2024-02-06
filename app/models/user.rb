class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :chatrooms_as_migrant, class_name: "Chatroom", foreign_key: :migrant_id
  has_many :chatrooms_as_contributor, class_name: "Chatroom", foreign_key: :contributor_id
  has_many :messages
  has_one_attached :photo
end
