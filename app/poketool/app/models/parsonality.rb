class Parsonality < ApplicationRecord
  has_many :my_monster, class_name: 'MyMonster', foreign_key: 'my_monster'
end
