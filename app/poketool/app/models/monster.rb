class Monster < ApplicationRecord
  belongs_to :type1, :class_name => 'Type'
  belongs_to :type2, :class_name => 'Type'
  has_many :from_monster, class_name: 'my_monster', foreign_key: 'monster'
end
