class Chatroom < ApplicationRecord
  belongs_to :migrant, class_name: "User"
  belongs_to :contributor, class_name: "User"
end
