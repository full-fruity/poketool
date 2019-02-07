class Monster < ApplicationRecord
  has_many :from_monster, class_name: 'my_monster', foreign_key: 'monster'
end
