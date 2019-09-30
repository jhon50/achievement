class User < ApplicationRecord
  has_many :deaths
  has_many :achievements
  has_many :killed_monsters
end
