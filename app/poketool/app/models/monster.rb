class Monster < ApplicationRecord
  belongs_to :type1, :class_name => 'Type'
  belongs_to :type2, :class_name => 'Type'
  has_many :from_monster, class_name: 'MyMonster', foreign_key: 'monster'
end
