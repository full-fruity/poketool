class Skill < ApplicationRecord
  belongs_to :type, :class_name => 'Type'
  has_many :my_monster, :class_name => 'MyMonster', :foreign_key => :skill1
  has_many :my_monster, :class_name => 'MyMonster', :foreign_key => :skill2
  has_many :my_monster, :class_name => 'MyMonster', :foreign_key => :skill3
  has_many :my_monster, :class_name => 'MyMonster', :foreign_key => :skill4
end
